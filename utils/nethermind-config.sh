#!/bin/bash
cat << EOF > /opt/aws/amazon-cloudwatch-agent/bin/config.json
{
    "agent": {
            "metrics_collection_interval": 60,
            "run_as_user": "root"
    },
    "logs": {
            "logs_collected": {
                    "files": {
                            "collect_list": [
                                    {
                                            "file_path": "/home/ec2-user/incentive-program/execution/nethermind/nethermindexecution-data/logs/*.logs.txt",
                                            "log_group_name": "execution-layer",
                                            "log_stream_name": "{instance_id}"
                                    }
                            ]
                    }
            }
    }
}
EOF
sudo amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json