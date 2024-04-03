#!/bin/bash


USERNAME="$USER"
SERVICE_FILE="/etc/systemd/system/avail.service"

cat > "${SERVICE_FILE}" << EOF
[Unit]
Description=Service to automatically restart avail.sh
After=network.target

[Service]
Type=simple
Restart=always
RestartSec=3
User=${USERNAME}
ExecStart=/bin/bash -c "curl -sL1 avail.sh | bash"

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable avail.service
systemctl start avail.service

echo "Service for user ${USERNAME} created and started."
