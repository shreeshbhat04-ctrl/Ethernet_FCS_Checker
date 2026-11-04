set -e
LOG="${1:-openlane_run.log}"
LOG_DIR="$(dirname "$LOG")"
if [ "$LOG_DIR" != "." ]; then
  mkdir -p "$LOG_DIR"
fi

echo "=========================================="
echo "Running OpenLane via Podman"
echo "Log file: ${LOG}"
echo "=========================================="
podman run --rm -it \
  -v $(pwd):/workspace \
  -w /workspace \
  ghcr.io/efabless/openlane2:2.4.0.dev1 \
  openlane openlane/config.json
echo "=========================================="
echo "OpenLane run finished. Log saved to: ${LOG}"
echo "=========================================="
