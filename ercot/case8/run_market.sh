#!/bin/bash
(export FNCS_BROKER="tcp://*:5570" && exec fncs_broker 17 &> broker.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus1_metrics.json Bus1.glm &> Bus1.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus2_metrics.json Bus2.glm &> Bus2.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus3_metrics.json Bus3.glm &> Bus3.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus4_metrics.json Bus4.glm &> Bus4.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus5_metrics.json Bus5.glm &> Bus5.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus6_metrics.json Bus6.glm &> Bus6.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus7_metrics.json Bus7.glm &> Bus7.log &)
(export FNCS_FATAL=YES && exec gridlabd -D USE_FNCS -D METRICS_FILE=Bus8_metrics.json Bus8.glm &> Bus8.log &)
(export FNCS_CONFIG_FILE=Bus1_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus1_agent_dict.json','Bus1', 24)" &> auction1.log &)
(export FNCS_CONFIG_FILE=Bus2_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus2_agent_dict.json','Bus2', 24)" &> auction2.log &)
(export FNCS_CONFIG_FILE=Bus3_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus3_agent_dict.json','Bus3', 24)" &> auction3.log &)
(export FNCS_CONFIG_FILE=Bus4_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus4_agent_dict.json','Bus4', 24)" &> auction4.log &)
(export FNCS_CONFIG_FILE=Bus5_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus5_agent_dict.json','Bus5', 24)" &> auction5.log &)
(export FNCS_CONFIG_FILE=Bus6_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus6_agent_dict.json','Bus6', 24)" &> auction6.log &)
(export FNCS_CONFIG_FILE=Bus7_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus7_agent_dict.json','Bus7', 24)" &> auction7.log &)
(export FNCS_CONFIG_FILE=Bus8_auction.yaml && export FNCS_FATAL=YES && exec python -c "import tesp_support.api as tesp;tesp.auction_loop('Bus8_agent_dict.json','Bus8', 24)" &> auction8.log &)
(export FNCS_CONFIG_FILE=pypower8.yaml && export FNCS_FATAL=YES && export FNCS_LOG_STDOUT=yes && exec pythonw fncsERCOT.py &> bulk.log &)
