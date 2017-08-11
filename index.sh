#!/bin/bash
socat TCP4-LISTEN:8080,fork EXEC:./server.sh
