import zlib,random

poly = 0x04C11DB7

def g():
    crc = [{f"c[{i}]"} for i in range(32)]
    for i in range(8):
        fb = crc[31] ^ {f"d[{i}]"}
        new_crc = [set() for _ in range(32)]
        new_crc[0] = set(fb)
        for j in range(1, 32):
            new_crc[j] = (crc[j-1] ^ fb) if (poly >> j) & 1 else set(crc[j-1])
        crc = new_crc          # inside the i-loop
    return crc

def step(eq,c,d):
    out =0
    for i,terms in enumerate(eq):
        v = 0
        for t in terms:
            idx = int(t[2:-1])
            v ^= ((c >> idx) & 1) if t[0] == "c" else ((d >> idx) & 1)
        out |= v << i
    return out
     
def rev(x): return int('{:032b}'.format(x)[::-1],2)
eq = g()
for _ in range(1000):
    msg =bytes(random.randrange(256) for _ in range(random.randint(1,64)))   
    c=0xFFFFFFFF
    for b in msg:c = step(eq,c,b)
    assert rev(c)^0xFFFFFFFF == zlib.crc32(msg)
    c=0xFFFFFFFF
    for b in msg+zlib.crc32(msg).to_bytes(4,"little"):c = step(eq,c,b)
    assert c == 0xC704DD7B and rev(c)==0xDEBB20E3
    
for i,terms in enumerate(eq):
    terms = sorted(list(terms), key=lambda x: (0 if x.startswith("c") else 1,int(x.split("[")[1][:-1])))
    print(f"n[{i}] = {' ^ '.join(terms)};")
   



# def g():
#     crc = [{f"c[{i}]"} for i in range(32)]
#     poly = 0x04C11DB7
#     for i in range(8):
#         d_bit = f"d[{i}]"
#         fb = crc[31] ^ {d_bit}
#         new_crc = [set() for _ in range(32)]
#         new_crc[0] = fb
#         for j in range(1,31):
#             if(poly >> (j)) & 1:
#                 new_crc[j] = crc[j - 1] ^ fb
#             else:
#                 new_crc[j] = crc[j - 1]
#         new_crc[31] = fb
#         crc = new_crc
        
#     for i in range(32):
#         terms = sorted(list(crc[i]), key=lambda x: (0 if x.startswith("c") else 1,int(x.split("[")[1][:-1])))
#         print(f"assign crc_out[{i}] = {' ^ '.join(terms)};")
        
# if __name__ == "__main__":
#     g()
