#!/usr/bin/env nextflow

channel = channel(1,2,3)

task {
   input channel
   maxForks 4
   errorStrategy 'ignore'

   "echo $channel; exit 1"

 }

 sleep 500

 channel2 = channel(4,5,6)

 task {
   input channel2
   maxForks 4

   "echo $channel2"

 }