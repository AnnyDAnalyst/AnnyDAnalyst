{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "2fd245e0",
   "metadata": {
    "_cell_guid": "6fb3a44c-3929-4caa-8701-a8c2d56de62b",
    "_uuid": "ed6f7fe5-1746-42c2-a12e-ba66d493c42a",
    "papermill": {
     "duration": 0.0087,
     "end_time": "2022-09-27T15:19:37.111371",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.102671",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Google Data Analytics Professional Certificate: Capstone Project\n",
    "\n",
    "\n",
    "### Case Study: How Does a Bike-Share Navigate Speedy Success?\n",
    "#### By Oyewale Aanuoluwapo"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a4194e39",
   "metadata": {
    "_cell_guid": "e964f921-4b26-4d57-9940-63c8f185d934",
    "_uuid": "53b6f4d1-b14c-4de1-806e-3761c9b312ce",
    "papermill": {
     "duration": 0.007021,
     "end_time": "2022-09-27T15:19:37.126296",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.119275",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## INTRODUCTION\n",
    "For this capstone project, I opted for the cyclistic bike-share analysis case study to work on.\n",
    "\n",
    "I am a junior data analyst working in the marketing analyst team for a fictional comapany, Cyclistic is a bike-share company in Chicago. Cyclistic's Marketing director is planning to maximize the number of Cyclistic members by creating marketing strategies to convert casual riders to annual member riders which will in turn leads to future growth. \n",
    "Cyclistic has 3 flexible pricing plans: single-ride passes, full-day passes, and annual memberships. Casual riders are customers who purchase single-ride or full-day passes while cyclistic members are customers who purchase annual memberships.\n",
    "\n",
    "As a Junior Data Analyst for Cyclistic,I was tasked with analyzing bike usage data to understand how casual riders and annual members use Cyclistic bikes differently,to help create a data driven marketing strategy.In order to answer the key business questions, I will follow the steps of the data analysis process: ask, prepare, process, analyze, share, and act."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7949536d",
   "metadata": {
    "_cell_guid": "3f032d2f-7ec7-4541-bae7-9ff82ff9ac2f",
    "_uuid": "4c0b76be-81f5-4703-a2c6-fad9a08c5d3b",
    "papermill": {
     "duration": 0.006773,
     "end_time": "2022-09-27T15:19:37.139971",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.133198",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## ASK\n",
    "#### What is the business task?\n",
    "Marketing strategy to maximize the number of annual memberships by converting casual riders into annual riders.\n",
    "#### Who are the key stakeholders?\n",
    "The Director (Lily Moreno) and the Cyclistic Executive Team\n",
    "#### What are the stakeholders perspective?\n",
    "Moreno states that the company’s future success depends on maximizing the number of annual memberships. Moreno believes that instead of creating a marketing campaign that targets all-new customers, casual riders have a very good chance of converting into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.\n",
    "#### What are the cogent queations that will guide the future marketing program?\n",
    "\n",
    "1. How do annual members and casual riders use Cyclistic bikes differently?\n",
    "2. Why would casual riders buy Cyclistic annual memberships?\n",
    "3. How can Cyclistic use digital media to influence casual riders to become members?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9661484f",
   "metadata": {
    "_cell_guid": "707fd6ff-6c6f-4293-b7c5-13a2ff5fd632",
    "_uuid": "c6055d30-fd0e-40b9-9fe2-546df2022de6",
    "papermill": {
     "duration": 0.006959,
     "end_time": "2022-09-27T15:19:37.153880",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.146921",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## PREPARE\n",
    "The dataset required for this business objective should be of the past 12 months. Here, I use the Cylistic's historical [data](https://divvy-tripdata.s3.amazonaws.com/index.html) from January 2021 till December 2021.This is a public data that is made available and licensed by Motivate International Inc. The data can use to explore how different customer types are using Cyclistic bikes.\n",
    "I downloaded and extracted the csv files and stored it in a single folder so they are easier to access and work on.\n",
    "\n",
    "#### Data Organization and Description\n",
    "* File Naming Convention : Trips_YYMM\n",
    "* File Type: CSV format\n",
    "\n",
    "#### Data Privacy\n",
    "To ensure data integrity,it is prohibited to use riders’ personally identifiable information"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "08eedb9d",
   "metadata": {
    "_cell_guid": "56990c07-77cc-4822-8e80-82f267ad3c96",
    "_uuid": "3c6c6dbd-c76a-4277-aad2-b04ff0168c9d",
    "papermill": {
     "duration": 0.007791,
     "end_time": "2022-09-27T15:19:37.168723",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.160932",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## PROCESS\n",
    "\n",
    "I chosed to use R for the data cleaning because of the size.\n",
    "To start with,I installed and loaded some packages that would be used in the analysis. The packages are Tidyverse to help wrangle data, readr for loading the datasets, ggplot2 for data visualization, lubridate package for working with dates, skimr and janitor for data manipulation."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d83088d0",
   "metadata": {
    "papermill": {
     "duration": 0.007151,
     "end_time": "2022-09-27T15:19:37.183208",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.176057",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Installation of the required Packages"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "89e7b40a",
   "metadata": {
    "_cell_guid": "076a3148-24ca-4287-9829-aea145ebf6a7",
    "_uuid": "e7fa4642-734d-4472-878d-2b9752a6173d",
    "collapsed": true,
    "execution": {
     "iopub.execute_input": "2022-09-27T15:19:37.200944Z",
     "iopub.status.busy": "2022-09-27T15:19:37.199235Z",
     "iopub.status.idle": "2022-09-27T15:19:38.798298Z",
     "shell.execute_reply": "2022-09-27T15:19:38.796858Z"
    },
    "jupyter": {
     "outputs_hidden": true
    },
    "papermill": {
     "duration": 1.610026,
     "end_time": "2022-09-27T15:19:38.800193",
     "exception": false,
     "start_time": "2022-09-27T15:19:37.190167",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.2 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6      \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.8      \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.10\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.1      \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.1 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.2      \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.2 \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n",
      "\n",
      "Attaching package: ‘janitor’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    chisq.test, fisher.test\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)\n",
    "library(lubridate)\n",
    "library(janitor)\n",
    "library(dplyr)\n",
    "library(ggplot2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fefd45ec",
   "metadata": {
    "papermill": {
     "duration": 0.007765,
     "end_time": "2022-09-27T15:19:38.815473",
     "exception": false,
     "start_time": "2022-09-27T15:19:38.807708",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### COLLECT DATA"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "eea74e8f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:19:38.858528Z",
     "iopub.status.busy": "2022-09-27T15:19:38.832122Z",
     "iopub.status.idle": "2022-09-27T15:21:20.625378Z",
     "shell.execute_reply": "2022-09-27T15:21:20.623840Z"
    },
    "papermill": {
     "duration": 101.804883,
     "end_time": "2022-09-27T15:21:20.627928",
     "exception": false,
     "start_time": "2022-09-27T15:19:38.823045",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "Trip21_Jan <- read.csv(\"../input/divvytrips2021/202101-divvy-tripdata.csv\")\n",
    "Trip21_Feb <- read.csv(\"../input/divvytrips2021/202102-divvy-tripdata.csv\")\n",
    "Trip21_Mar <- read.csv(\"../input/divvytrips2021/202103-divvy-tripdata.csv\")\n",
    "Trip21_Apr <- read.csv(\"../input/divvytrips2021/202104-divvy-tripdata.csv\")\n",
    "Trip21_May <- read.csv(\"../input/divvytrips2021/202105-divvy-tripdata.csv\")\n",
    "Trip21_Jun <- read.csv(\"../input/divvytrips2021/202106-divvy-tripdata.csv\")\n",
    "Trip21_Jul <- read.csv(\"../input/divvytrips2021/202107-divvy-tripdata.csv\")\n",
    "Trip21_Aug <- read.csv(\"../input/divvytrips2021/202108-divvy-tripdata.csv\")\n",
    "Trip21_Sep <- read.csv(\"../input/divvytrips2021/202109-divvy-tripdata.csv\")\n",
    "Trip21_Oct <- read.csv(\"../input/divvytrips2021/202110-divvy-tripdata.csv\")\n",
    "Trip21_Nov <- read.csv(\"../input/divvytrips2021/202111-divvy-tripdata.csv\")\n",
    "Trip21_Dec <- read.csv(\"../input/divvytrips2021/202112-divvy-tripdata.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a3c529f9",
   "metadata": {
    "papermill": {
     "duration": 0.008105,
     "end_time": "2022-09-27T15:21:20.647454",
     "exception": false,
     "start_time": "2022-09-27T15:21:20.639349",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### WRANGLE DATA AND COMBINE INTO A SINGLE DATA FRAME"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "a2533a3b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:20.666299Z",
     "iopub.status.busy": "2022-09-27T15:21:20.664979Z",
     "iopub.status.idle": "2022-09-27T15:21:20.727642Z",
     "shell.execute_reply": "2022-09-27T15:21:20.725991Z"
    },
    "papermill": {
     "duration": 0.074347,
     "end_time": "2022-09-27T15:21:20.729698",
     "exception": false,
     "start_time": "2022-09-27T15:21:20.655351",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(Trip21_Jan)\n",
    "colnames(Trip21_Feb)\n",
    "colnames(Trip21_Mar)\n",
    "colnames(Trip21_Apr)\n",
    "colnames(Trip21_May)\n",
    "colnames(Trip21_Jun)\n",
    "colnames(Trip21_Jul)\n",
    "colnames(Trip21_Aug)\n",
    "colnames(Trip21_Sep)\n",
    "colnames(Trip21_Oct)\n",
    "colnames(Trip21_Nov)\n",
    "colnames(Trip21_Dec)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5a1ee6a3",
   "metadata": {
    "papermill": {
     "duration": 0.009755,
     "end_time": "2022-09-27T15:21:20.749221",
     "exception": false,
     "start_time": "2022-09-27T15:21:20.739466",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Inspect the dataframe to look for inconsistencies"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "43be897c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:20.771916Z",
     "iopub.status.busy": "2022-09-27T15:21:20.770570Z",
     "iopub.status.idle": "2022-09-27T15:21:21.034858Z",
     "shell.execute_reply": "2022-09-27T15:21:21.032661Z"
    },
    "papermill": {
     "duration": 0.278209,
     "end_time": "2022-09-27T15:21:21.037095",
     "exception": false,
     "start_time": "2022-09-27T15:21:20.758886",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t96834 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"E19E6F1B8D4C42ED\" \"DC88F20C2C55F27F\" \"EC45C94683FE3F27\" \"4FA453A75AE377DB\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-01-23 16:14:19\" \"2021-01-27 18:43:08\" \"2021-01-21 22:35:54\" \"2021-01-07 13:31:13\" ...\n",
      " $ ended_at          : chr  \"2021-01-23 16:24:44\" \"2021-01-27 18:47:12\" \"2021-01-21 22:37:14\" \"2021-01-07 13:42:55\" ...\n",
      " $ start_station_name: chr  \"California Ave & Cortez St\" \"California Ave & Cortez St\" \"California Ave & Cortez St\" \"California Ave & Cortez St\" ...\n",
      " $ start_station_id  : chr  \"17660\" \"17660\" \"17660\" \"17660\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t49622 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"89E7AA6C29227EFF\" \"0FEFDE2603568365\" \"E6159D746B2DBB91\" \"B32D3199F1C2E75B\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"electric_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-02-12 16:14:56\" \"2021-02-14 17:52:38\" \"2021-02-09 19:10:18\" \"2021-02-02 17:49:41\" ...\n",
      " $ ended_at          : chr  \"2021-02-12 16:21:43\" \"2021-02-14 18:12:09\" \"2021-02-09 19:19:10\" \"2021-02-02 17:54:06\" ...\n",
      " $ start_station_name: chr  \"Glenwood Ave & Touhy Ave\" \"Glenwood Ave & Touhy Ave\" \"Clark St & Lake St\" \"Wood St & Chicago Ave\" ...\n",
      " $ start_station_id  : chr  \"525\" \"525\" \"KA1503000012\" \"637\" ...\n",
      " $ end_station_name  : chr  \"Sheridan Rd & Columbia Ave\" \"Bosworth Ave & Howard St\" \"State St & Randolph St\" \"Honore St & Division St\" ...\n",
      " $ end_station_id    : chr  \"660\" \"16806\" \"TA1305000029\" \"TA1305000034\" ...\n",
      " $ start_lat         : num  42 42 41.9 41.9 41.8 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.6 -87.7 -87.6 ...\n",
      " $ end_lat           : num  42 42 41.9 41.9 41.8 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.6 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"member\" \"member\" ...\n",
      "'data.frame':\t228496 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"CFA86D4455AA1030\" \"30D9DC61227D1AF3\" \"846D87A15682A284\" \"994D05AA75A168F2\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-03-16 08:32:30\" \"2021-03-28 01:26:28\" \"2021-03-11 21:17:29\" \"2021-03-11 13:26:42\" ...\n",
      " $ ended_at          : chr  \"2021-03-16 08:36:34\" \"2021-03-28 01:36:55\" \"2021-03-11 21:33:53\" \"2021-03-11 13:55:41\" ...\n",
      " $ start_station_name: chr  \"Humboldt Blvd & Armitage Ave\" \"Humboldt Blvd & Armitage Ave\" \"Shields Ave & 28th Pl\" \"Winthrop Ave & Lawrence Ave\" ...\n",
      " $ start_station_id  : chr  \"15651\" \"15651\" \"15443\" \"TA1308000021\" ...\n",
      " $ end_station_name  : chr  \"Stave St & Armitage Ave\" \"Central Park Ave & Bloomingdale Ave\" \"Halsted St & 35th St\" \"Broadway & Sheridan Rd\" ...\n",
      " $ end_station_id    : chr  \"13266\" \"18017\" \"TA1308000043\" \"13323\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.8 42 42 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.6 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.8 42 42.1 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.6 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t337230 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"6C992BD37A98A63F\" \"1E0145613A209000\" \"E498E15508A80BAD\" \"1887262AD101C604\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"docked_bike\" \"docked_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-04-12 18:25:36\" \"2021-04-27 17:27:11\" \"2021-04-03 12:42:45\" \"2021-04-17 09:17:42\" ...\n",
      " $ ended_at          : chr  \"2021-04-12 18:56:55\" \"2021-04-27 18:31:29\" \"2021-04-07 11:40:24\" \"2021-04-17 09:42:48\" ...\n",
      " $ start_station_name: chr  \"State St & Pearson St\" \"Dorchester Ave & 49th St\" \"Loomis Blvd & 84th St\" \"Honore St & Division St\" ...\n",
      " $ start_station_id  : chr  \"TA1307000061\" \"KA1503000069\" \"20121\" \"TA1305000034\" ...\n",
      " $ end_station_name  : chr  \"Southport Ave & Waveland Ave\" \"Dorchester Ave & 49th St\" \"Loomis Blvd & 84th St\" \"Southport Ave & Waveland Ave\" ...\n",
      " $ end_station_id    : chr  \"13235\" \"KA1503000069\" \"20121\" \"13235\" ...\n",
      " $ start_lat         : num  41.9 41.8 41.7 41.9 41.7 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.8 41.7 41.9 41.7 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"casual\" \"member\" ...\n",
      "'data.frame':\t531633 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"C809ED75D6160B2A\" \"DD59FDCE0ACACAF3\" \"0AB83CB88C43EFC2\" \"7881AC6D39110C60\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-05-30 11:58:15\" \"2021-05-30 11:29:14\" \"2021-05-30 14:24:01\" \"2021-05-30 14:25:51\" ...\n",
      " $ ended_at          : chr  \"2021-05-30 12:10:39\" \"2021-05-30 12:14:09\" \"2021-05-30 14:25:13\" \"2021-05-30 14:41:04\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.8 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t729595 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"99FEC93BA843FB20\" \"06048DCFC8520CAF\" \"9598066F68045DF2\" \"B03C0FE48C412214\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-06-13 14:31:28\" \"2021-06-04 11:18:02\" \"2021-06-04 09:49:35\" \"2021-06-03 19:56:05\" ...\n",
      " $ ended_at          : chr  \"2021-06-13 14:34:11\" \"2021-06-04 11:24:19\" \"2021-06-04 09:55:34\" \"2021-06-03 20:21:55\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.8 41.8 41.8 41.8 41.8 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.8 41.8 41.8 41.8 41.8 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t822410 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"0A1B623926EF4E16\" \"B2D5583A5A5E76EE\" \"6F264597DDBF427A\" \"379B58EAB20E8AA5\" ...\n",
      " $ rideable_type     : chr  \"docked_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-07-02 14:44:36\" \"2021-07-07 16:57:42\" \"2021-07-25 11:30:55\" \"2021-07-08 22:08:30\" ...\n",
      " $ ended_at          : chr  \"2021-07-02 15:19:58\" \"2021-07-07 17:16:09\" \"2021-07-25 11:48:45\" \"2021-07-08 22:23:32\" ...\n",
      " $ start_station_name: chr  \"Michigan Ave & Washington St\" \"California Ave & Cortez St\" \"Wabash Ave & 16th St\" \"California Ave & Cortez St\" ...\n",
      " $ start_station_id  : chr  \"13001\" \"17660\" \"SL-012\" \"17660\" ...\n",
      " $ end_station_name  : chr  \"Halsted St & North Branch St\" \"Wood St & Hubbard St\" \"Rush St & Hubbard St\" \"Carpenter St & Huron St\" ...\n",
      " $ end_station_id    : chr  \"KA1504000117\" \"13432\" \"KA1503000044\" \"13196\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.7 -87.6 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.6 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"member\" \"member\" ...\n",
      "'data.frame':\t804352 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"99103BB87CC6C1BB\" \"EAFCCCFB0A3FC5A1\" \"9EF4F46C57AD234D\" \"5834D3208BFAF1DA\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-08-10 17:15:49\" \"2021-08-10 17:23:14\" \"2021-08-21 02:34:23\" \"2021-08-21 06:52:55\" ...\n",
      " $ ended_at          : chr  \"2021-08-10 17:22:44\" \"2021-08-10 17:39:24\" \"2021-08-21 02:50:36\" \"2021-08-21 07:08:13\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.8 41.8 42 42 41.8 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num  41.8 41.8 42 42 41.8 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t756147 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"9DC7B962304CBFD8\" \"F930E2C6872D6B32\" \"6EF72137900BB910\" \"78D1DE133B3DBF55\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-09-28 16:07:10\" \"2021-09-28 14:24:51\" \"2021-09-28 00:20:16\" \"2021-09-28 14:51:17\" ...\n",
      " $ ended_at          : chr  \"2021-09-28 16:09:54\" \"2021-09-28 14:40:05\" \"2021-09-28 00:23:57\" \"2021-09-28 15:00:06\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.8 41.8 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 42 41.8 41.8 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t631226 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"620BC6107255BF4C\" \"4471C70731AB2E45\" \"26CA69D43D15EE14\" \"362947F0437E1514\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-10-22 12:46:42\" \"2021-10-21 09:12:37\" \"2021-10-16 16:28:39\" \"2021-10-16 16:17:48\" ...\n",
      " $ ended_at          : chr  \"2021-10-22 12:49:50\" \"2021-10-21 09:14:14\" \"2021-10-16 16:36:26\" \"2021-10-16 16:19:03\" ...\n",
      " $ start_station_name: chr  \"Kingsbury St & Kinzie St\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"KA1503000043\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t359978 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"7C00A93E10556E47\" \"90854840DFD508BA\" \"0A7D10CDD144061C\" \"2F3BE33085BCFF02\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-11-27 13:27:38\" \"2021-11-27 13:38:25\" \"2021-11-26 22:03:34\" \"2021-11-27 09:56:49\" ...\n",
      " $ ended_at          : chr  \"2021-11-27 13:46:38\" \"2021-11-27 13:56:10\" \"2021-11-26 22:05:56\" \"2021-11-27 10:01:50\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 42 42 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.8 -87.6 ...\n",
      " $ end_lat           : num  42 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.8 -87.6 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t247540 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"46F8167220E4431F\" \"73A77762838B32FD\" \"4CF42452054F59C5\" \"3278BA87BF698339\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-12-07 15:06:07\" \"2021-12-11 03:43:29\" \"2021-12-15 23:10:28\" \"2021-12-26 16:16:10\" ...\n",
      " $ ended_at          : chr  \"2021-12-07 15:13:42\" \"2021-12-11 04:10:23\" \"2021-12-15 23:23:14\" \"2021-12-26 16:30:53\" ...\n",
      " $ start_station_name: chr  \"Laflin St & Cullerton St\" \"LaSalle Dr & Huron St\" \"Halsted St & North Branch St\" \"Halsted St & North Branch St\" ...\n",
      " $ start_station_id  : chr  \"13307\" \"KP1705001026\" \"KA1504000117\" \"KA1504000117\" ...\n",
      " $ end_station_name  : chr  \"Morgan St & Polk St\" \"Clarendon Ave & Leland Ave\" \"Broadway & Barry Ave\" \"LaSalle Dr & Huron St\" ...\n",
      " $ end_station_id    : chr  \"TA1307000130\" \"TA1307000119\" \"13137\" \"KP1705001026\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ end_lat           : num  41.9 42 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "str(Trip21_Jan)\n",
    "str(Trip21_Feb)\n",
    "str(Trip21_Mar)\n",
    "str(Trip21_Apr)\n",
    "str(Trip21_May)\n",
    "str(Trip21_Jun)\n",
    "str(Trip21_Jul)\n",
    "str(Trip21_Aug)\n",
    "str(Trip21_Sep)\n",
    "str(Trip21_Oct)\n",
    "str(Trip21_Nov)\n",
    "str(Trip21_Dec)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5a3c28c3",
   "metadata": {
    "papermill": {
     "duration": 0.009873,
     "end_time": "2022-09-27T15:21:21.056902",
     "exception": false,
     "start_time": "2022-09-27T15:21:21.047029",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Convert ride_id and rideable_type to character so that they can stack correctly"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "67a91fc4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:21.080120Z",
     "iopub.status.busy": "2022-09-27T15:21:21.078794Z",
     "iopub.status.idle": "2022-09-27T15:21:21.145567Z",
     "shell.execute_reply": "2022-09-27T15:21:21.143848Z"
    },
    "papermill": {
     "duration": 0.081347,
     "end_time": "2022-09-27T15:21:21.148209",
     "exception": false,
     "start_time": "2022-09-27T15:21:21.066862",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "Trip21_Jan <-  mutate(Trip21_Jan, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "Trip21_Feb <-  mutate(Trip21_Feb, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "Trip21_Mar <-  mutate(Trip21_Mar, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "Trip21_Apr <-  mutate(Trip21_Apr, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "Trip21_May <-  mutate(Trip21_May, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type)) \n",
    "Trip21_Jun <-  mutate(Trip21_Jun, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))\n",
    "Trip21_Jul <-  mutate(Trip21_Jul, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))\n",
    "Trip21_Aug <-  mutate(Trip21_Aug, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))\n",
    "Trip21_Sep <-  mutate(Trip21_Sep, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))\n",
    "Trip21_Oct <-  mutate(Trip21_Oct, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))\n",
    "Trip21_Nov <-  mutate(Trip21_Nov, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))\n",
    "Trip21_Dec <-  mutate(Trip21_Dec, ride_id = as.character(ride_id)\n",
    "                   ,rideable_type = as.character(rideable_type))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7241086e",
   "metadata": {
    "papermill": {
     "duration": 0.009975,
     "end_time": "2022-09-27T15:21:21.168226",
     "exception": false,
     "start_time": "2022-09-27T15:21:21.158251",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Stack individual monthly data frames into one big data frame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "f68db180",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:21.193023Z",
     "iopub.status.busy": "2022-09-27T15:21:21.191305Z",
     "iopub.status.idle": "2022-09-27T15:21:38.599654Z",
     "shell.execute_reply": "2022-09-27T15:21:38.595973Z"
    },
    "papermill": {
     "duration": 17.43098,
     "end_time": "2022-09-27T15:21:38.610485",
     "exception": false,
     "start_time": "2022-09-27T15:21:21.179505",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "All_Trips <- bind_rows(Trip21_Jan, Trip21_Feb, Trip21_Mar, Trip21_Apr, Trip21_May, Trip21_Jun, Trip21_Jul, Trip21_Aug, Trip21_Sep, Trip21_Oct, Trip21_Nov, Trip21_Dec)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c1e0a986",
   "metadata": {
    "papermill": {
     "duration": 0.019762,
     "end_time": "2022-09-27T15:21:38.660470",
     "exception": false,
     "start_time": "2022-09-27T15:21:38.640708",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    " ### CLEAN UP AND DATA TO PREPARE FOR ANALYSIS"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "c7f12e4e",
   "metadata": {
    "collapsed": true,
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:38.690207Z",
     "iopub.status.busy": "2022-09-27T15:21:38.688677Z",
     "iopub.status.idle": "2022-09-27T15:21:43.953956Z",
     "shell.execute_reply": "2022-09-27T15:21:43.952644Z"
    },
    "jupyter": {
     "outputs_hidden": true
    },
    "papermill": {
     "duration": 5.282619,
     "end_time": "2022-09-27T15:21:43.955680",
     "exception": false,
     "start_time": "2022-09-27T15:21:38.673061",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5595063"
      ],
      "text/latex": [
       "5595063"
      ],
      "text/markdown": [
       "5595063"
      ],
      "text/plain": [
       "[1] 5595063"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>5595063</li><li>13</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5595063\n",
       "\\item 13\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5595063\n",
       "2. 13\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 5595063      13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>E19E6F1B8D4C42ED</td><td>electric_bike</td><td>2021-01-23 16:14:19</td><td>2021-01-23 16:24:44</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90034</td><td>-87.69674</td><td>41.89</td><td>-87.72</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DC88F20C2C55F27F</td><td>electric_bike</td><td>2021-01-27 18:43:08</td><td>2021-01-27 18:47:12</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90033</td><td>-87.69671</td><td>41.90</td><td>-87.69</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>EC45C94683FE3F27</td><td>electric_bike</td><td>2021-01-21 22:35:54</td><td>2021-01-21 22:37:14</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90031</td><td>-87.69664</td><td>41.90</td><td>-87.70</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>4FA453A75AE377DB</td><td>electric_bike</td><td>2021-01-07 13:31:13</td><td>2021-01-07 13:42:55</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90040</td><td>-87.69666</td><td>41.92</td><td>-87.69</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>BE5E8EB4E7263A0B</td><td>electric_bike</td><td>2021-01-23 02:24:02</td><td>2021-01-23 02:24:45</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90033</td><td>-87.69670</td><td>41.90</td><td>-87.70</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5D8969F88C773979</td><td>electric_bike</td><td>2021-01-09 14:24:07</td><td>2021-01-09 15:17:54</td><td>California Ave &amp; Cortez St</td><td>17660</td><td></td><td></td><td>41.90041</td><td>-87.69676</td><td>41.94</td><td>-87.71</td><td>casual</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & E19E6F1B8D4C42ED & electric\\_bike & 2021-01-23 16:14:19 & 2021-01-23 16:24:44 & California Ave \\& Cortez St & 17660 &  &  & 41.90034 & -87.69674 & 41.89 & -87.72 & member\\\\\n",
       "\t2 & DC88F20C2C55F27F & electric\\_bike & 2021-01-27 18:43:08 & 2021-01-27 18:47:12 & California Ave \\& Cortez St & 17660 &  &  & 41.90033 & -87.69671 & 41.90 & -87.69 & member\\\\\n",
       "\t3 & EC45C94683FE3F27 & electric\\_bike & 2021-01-21 22:35:54 & 2021-01-21 22:37:14 & California Ave \\& Cortez St & 17660 &  &  & 41.90031 & -87.69664 & 41.90 & -87.70 & member\\\\\n",
       "\t4 & 4FA453A75AE377DB & electric\\_bike & 2021-01-07 13:31:13 & 2021-01-07 13:42:55 & California Ave \\& Cortez St & 17660 &  &  & 41.90040 & -87.69666 & 41.92 & -87.69 & member\\\\\n",
       "\t5 & BE5E8EB4E7263A0B & electric\\_bike & 2021-01-23 02:24:02 & 2021-01-23 02:24:45 & California Ave \\& Cortez St & 17660 &  &  & 41.90033 & -87.69670 & 41.90 & -87.70 & casual\\\\\n",
       "\t6 & 5D8969F88C773979 & electric\\_bike & 2021-01-09 14:24:07 & 2021-01-09 15:17:54 & California Ave \\& Cortez St & 17660 &  &  & 41.90041 & -87.69676 & 41.94 & -87.71 & casual\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | E19E6F1B8D4C42ED | electric_bike | 2021-01-23 16:14:19 | 2021-01-23 16:24:44 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90034 | -87.69674 | 41.89 | -87.72 | member |\n",
       "| 2 | DC88F20C2C55F27F | electric_bike | 2021-01-27 18:43:08 | 2021-01-27 18:47:12 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90033 | -87.69671 | 41.90 | -87.69 | member |\n",
       "| 3 | EC45C94683FE3F27 | electric_bike | 2021-01-21 22:35:54 | 2021-01-21 22:37:14 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90031 | -87.69664 | 41.90 | -87.70 | member |\n",
       "| 4 | 4FA453A75AE377DB | electric_bike | 2021-01-07 13:31:13 | 2021-01-07 13:42:55 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90040 | -87.69666 | 41.92 | -87.69 | member |\n",
       "| 5 | BE5E8EB4E7263A0B | electric_bike | 2021-01-23 02:24:02 | 2021-01-23 02:24:45 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90033 | -87.69670 | 41.90 | -87.70 | casual |\n",
       "| 6 | 5D8969F88C773979 | electric_bike | 2021-01-09 14:24:07 | 2021-01-09 15:17:54 | California Ave &amp; Cortez St | 17660 | <!----> | <!----> | 41.90041 | -87.69676 | 41.94 | -87.71 | casual |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 E19E6F1B8D4C42ED electric_bike 2021-01-23 16:14:19 2021-01-23 16:24:44\n",
       "2 DC88F20C2C55F27F electric_bike 2021-01-27 18:43:08 2021-01-27 18:47:12\n",
       "3 EC45C94683FE3F27 electric_bike 2021-01-21 22:35:54 2021-01-21 22:37:14\n",
       "4 4FA453A75AE377DB electric_bike 2021-01-07 13:31:13 2021-01-07 13:42:55\n",
       "5 BE5E8EB4E7263A0B electric_bike 2021-01-23 02:24:02 2021-01-23 02:24:45\n",
       "6 5D8969F88C773979 electric_bike 2021-01-09 14:24:07 2021-01-09 15:17:54\n",
       "  start_station_name         start_station_id end_station_name end_station_id\n",
       "1 California Ave & Cortez St 17660                                           \n",
       "2 California Ave & Cortez St 17660                                           \n",
       "3 California Ave & Cortez St 17660                                           \n",
       "4 California Ave & Cortez St 17660                                           \n",
       "5 California Ave & Cortez St 17660                                           \n",
       "6 California Ave & Cortez St 17660                                           \n",
       "  start_lat start_lng end_lat end_lng member_casual\n",
       "1 41.90034  -87.69674 41.89   -87.72  member       \n",
       "2 41.90033  -87.69671 41.90   -87.69  member       \n",
       "3 41.90031  -87.69664 41.90   -87.70  member       \n",
       "4 41.90040  -87.69666 41.92   -87.69  member       \n",
       "5 41.90033  -87.69670 41.90   -87.70  casual       \n",
       "6 41.90041  -87.69676 41.94   -87.71  casual       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5595063 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"E19E6F1B8D4C42ED\" \"DC88F20C2C55F27F\" \"EC45C94683FE3F27\" \"4FA453A75AE377DB\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-01-23 16:14:19\" \"2021-01-27 18:43:08\" \"2021-01-21 22:35:54\" \"2021-01-07 13:31:13\" ...\n",
      " $ ended_at          : chr  \"2021-01-23 16:24:44\" \"2021-01-27 18:47:12\" \"2021-01-21 22:37:14\" \"2021-01-07 13:42:55\" ...\n",
      " $ start_station_name: chr  \"California Ave & Cortez St\" \"California Ave & Cortez St\" \"California Ave & Cortez St\" \"California Ave & Cortez St\" ...\n",
      " $ start_station_id  : chr  \"17660\" \"17660\" \"17660\" \"17660\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type       started_at          ended_at        \n",
       " Length:5595063     Length:5595063     Length:5595063     Length:5595063    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " start_station_name start_station_id   end_station_name   end_station_id    \n",
       " Length:5595063     Length:5595063     Length:5595063     Length:5595063    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "   start_lat       start_lng         end_lat         end_lng      \n",
       " Min.   :41.64   Min.   :-87.84   Min.   :41.39   Min.   :-88.97  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Median :41.90   Median :-87.64   Median :41.90   Median :-87.64  \n",
       " Mean   :41.90   Mean   :-87.65   Mean   :41.90   Mean   :-87.65  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63   3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       " Max.   :42.07   Max.   :-87.52   Max.   :42.17   Max.   :-87.49  \n",
       "                                  NA's   :4771    NA's   :4771    \n",
       " member_casual     \n",
       " Length:5595063    \n",
       " Class :character  \n",
       " Mode  :character  \n",
       "                   \n",
       "                   \n",
       "                   \n",
       "                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(All_Trips)  #List of column names\n",
    "nrow(All_Trips)  #How many rows are in data frame?\n",
    "dim(All_Trips)  #Dimensions of the data frame?\n",
    "head(All_Trips)  #See the first 6 rows of data frame.  Also tail(all_trips)\n",
    "str(All_Trips)  #See list of columns and data types (numeric, character, etc)\n",
    "summary(All_Trips)  #Statistical summary of data. Mainly for numerics\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f6a80e57",
   "metadata": {
    "papermill": {
     "duration": 0.011861,
     "end_time": "2022-09-27T15:21:43.978756",
     "exception": false,
     "start_time": "2022-09-27T15:21:43.966895",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Begin by seeing how many observations fall under each usertype\n",
    "\n",
    "From the code below, Member usertype has taken more trips"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "33c91f6a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:44.003544Z",
     "iopub.status.busy": "2022-09-27T15:21:44.002309Z",
     "iopub.status.idle": "2022-09-27T15:21:50.344281Z",
     "shell.execute_reply": "2022-09-27T15:21:50.342809Z"
    },
    "papermill": {
     "duration": 6.357134,
     "end_time": "2022-09-27T15:21:50.346644",
     "exception": false,
     "start_time": "2022-09-27T15:21:43.989510",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       " casual  member \n",
       "2529005 3066058 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(All_Trips$member_casual)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b80ab2ac",
   "metadata": {
    "papermill": {
     "duration": 0.011593,
     "end_time": "2022-09-27T15:21:50.369849",
     "exception": false,
     "start_time": "2022-09-27T15:21:50.358256",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Reassign to the desired values "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "9558b300",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:50.396576Z",
     "iopub.status.busy": "2022-09-27T15:21:50.395240Z",
     "iopub.status.idle": "2022-09-27T15:21:52.493982Z",
     "shell.execute_reply": "2022-09-27T15:21:52.492459Z"
    },
    "papermill": {
     "duration": 2.114085,
     "end_time": "2022-09-27T15:21:52.495955",
     "exception": false,
     "start_time": "2022-09-27T15:21:50.381870",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "All_Trips <-  All_Trips %>% \n",
    "  mutate(member_casual = recode(member_casual\n",
    "                           ,\"Subscriber\" = \"member\"\n",
    "                           ,\"Customer\" = \"casual\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "6eca1104",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:52.520933Z",
     "iopub.status.busy": "2022-09-27T15:21:52.519685Z",
     "iopub.status.idle": "2022-09-27T15:21:52.896749Z",
     "shell.execute_reply": "2022-09-27T15:21:52.895276Z"
    },
    "papermill": {
     "duration": 0.392578,
     "end_time": "2022-09-27T15:21:52.899434",
     "exception": false,
     "start_time": "2022-09-27T15:21:52.506856",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       " casual  member \n",
       "2529005 3066058 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(All_Trips$member_casual)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c9001d14",
   "metadata": {
    "papermill": {
     "duration": 0.01991,
     "end_time": "2022-09-27T15:21:52.930882",
     "exception": false,
     "start_time": "2022-09-27T15:21:52.910972",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Add columns that list the date, month, day, and year of each ride\n",
    " This will allow us to aggregate ride data for each month, day, or year ... before completing these operations we could only aggregate at the ride level\n",
    " https://www.statmethods.net/input/dates.html more on date formats in R found at that link\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "5665dcd5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:21:52.956581Z",
     "iopub.status.busy": "2022-09-27T15:21:52.955137Z",
     "iopub.status.idle": "2022-09-27T15:22:15.009561Z",
     "shell.execute_reply": "2022-09-27T15:22:15.008025Z"
    },
    "papermill": {
     "duration": 22.070492,
     "end_time": "2022-09-27T15:22:15.012826",
     "exception": false,
     "start_time": "2022-09-27T15:21:52.942334",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "All_Trips$date <- as.Date(All_Trips$started_at) #The default format is yyyy-mm-dd\n",
    "All_Trips$month <- format(as.Date(All_Trips$date), \"%m\")\n",
    "All_Trips$day <- format(as.Date(All_Trips$date), \"%d\")\n",
    "All_Trips$year <- format(as.Date(All_Trips$date), \"%Y\")\n",
    "All_Trips$day_of_week <- format(as.Date(All_Trips$date), \"%A\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e5686d85",
   "metadata": {
    "papermill": {
     "duration": 0.011595,
     "end_time": "2022-09-27T15:22:15.035599",
     "exception": false,
     "start_time": "2022-09-27T15:22:15.024004",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Add a \"ride_length\" calculation to All_Trips (in seconds) \n",
    "\n",
    " https://stat.ethz.ch/R-manual/R-devel/library/base/html/difftime.html"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "db6246ac",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:22:15.061083Z",
     "iopub.status.busy": "2022-09-27T15:22:15.059739Z",
     "iopub.status.idle": "2022-09-27T15:22:44.932058Z",
     "shell.execute_reply": "2022-09-27T15:22:44.930493Z"
    },
    "papermill": {
     "duration": 29.887228,
     "end_time": "2022-09-27T15:22:44.934014",
     "exception": false,
     "start_time": "2022-09-27T15:22:15.046786",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "All_Trips$ride_length <- difftime(All_Trips$ended_at,All_Trips$started_at)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5b885e96",
   "metadata": {
    "papermill": {
     "duration": 0.011111,
     "end_time": "2022-09-27T15:22:44.956369",
     "exception": false,
     "start_time": "2022-09-27T15:22:44.945258",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Inspect the structure of the columns"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "dab8516a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:22:44.981444Z",
     "iopub.status.busy": "2022-09-27T15:22:44.980101Z",
     "iopub.status.idle": "2022-09-27T15:22:45.018265Z",
     "shell.execute_reply": "2022-09-27T15:22:45.016802Z"
    },
    "papermill": {
     "duration": 0.05289,
     "end_time": "2022-09-27T15:22:45.020180",
     "exception": false,
     "start_time": "2022-09-27T15:22:44.967290",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5595063 obs. of  19 variables:\n",
      " $ ride_id           : chr  \"E19E6F1B8D4C42ED\" \"DC88F20C2C55F27F\" \"EC45C94683FE3F27\" \"4FA453A75AE377DB\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-01-23 16:14:19\" \"2021-01-27 18:43:08\" \"2021-01-21 22:35:54\" \"2021-01-07 13:31:13\" ...\n",
      " $ ended_at          : chr  \"2021-01-23 16:24:44\" \"2021-01-27 18:47:12\" \"2021-01-21 22:37:14\" \"2021-01-07 13:42:55\" ...\n",
      " $ start_station_name: chr  \"California Ave & Cortez St\" \"California Ave & Cortez St\" \"California Ave & Cortez St\" \"California Ave & Cortez St\" ...\n",
      " $ start_station_id  : chr  \"17660\" \"17660\" \"17660\" \"17660\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      " $ date              : Date, format: \"2021-01-23\" \"2021-01-27\" ...\n",
      " $ month             : chr  \"01\" \"01\" \"01\" \"01\" ...\n",
      " $ day               : chr  \"23\" \"27\" \"21\" \"07\" ...\n",
      " $ year              : chr  \"2021\" \"2021\" \"2021\" \"2021\" ...\n",
      " $ day_of_week       : chr  \"Saturday\" \"Wednesday\" \"Thursday\" \"Thursday\" ...\n",
      " $ ride_length       : 'difftime' num  625 244 80 702 ...\n",
      "  ..- attr(*, \"units\")= chr \"secs\"\n"
     ]
    }
   ],
   "source": [
    "str(All_Trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "82972353",
   "metadata": {
    "papermill": {
     "duration": 0.011461,
     "end_time": "2022-09-27T15:22:45.044583",
     "exception": false,
     "start_time": "2022-09-27T15:22:45.033122",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Conversion of \"ride_length\" from Factor to numeric so calculations can be done on the data\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "c4dbe8be",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:22:45.069445Z",
     "iopub.status.busy": "2022-09-27T15:22:45.068054Z",
     "iopub.status.idle": "2022-09-27T15:22:51.298170Z",
     "shell.execute_reply": "2022-09-27T15:22:51.296839Z"
    },
    "papermill": {
     "duration": 6.244921,
     "end_time": "2022-09-27T15:22:51.300477",
     "exception": false,
     "start_time": "2022-09-27T15:22:45.055556",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "is.factor(All_Trips$ride_length)\n",
    "All_Trips$ride_length <- as.numeric(as.character(All_Trips$ride_length))\n",
    "is.numeric(All_Trips$ride_length)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ad010e44",
   "metadata": {
    "papermill": {
     "duration": 0.011361,
     "end_time": "2022-09-27T15:22:51.323300",
     "exception": false,
     "start_time": "2022-09-27T15:22:51.311939",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Remove \"bad\" data\n",
    "The dataframe includes a few hundred entries when bikes were taken out of docks and checked for quality by Divvy or ride_length was negative.\n",
    "A new version of the dataframe (v2) was created since data is being removed\n",
    "https://www.datasciencemadesimple.com/delete-or-drop-rows-in-r-with-conditions-2/\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "2105a356",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:22:51.348358Z",
     "iopub.status.busy": "2022-09-27T15:22:51.347049Z",
     "iopub.status.idle": "2022-09-27T15:23:02.054019Z",
     "shell.execute_reply": "2022-09-27T15:23:02.052449Z"
    },
    "papermill": {
     "duration": 10.722313,
     "end_time": "2022-09-27T15:23:02.056567",
     "exception": false,
     "start_time": "2022-09-27T15:22:51.334254",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "All_Trips_v2 <- All_Trips[!(All_Trips$start_station_name == \"HQ QR\" | All_Trips$ride_length<0),]\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "49e8c10a",
   "metadata": {
    "papermill": {
     "duration": 0.010412,
     "end_time": "2022-09-27T15:23:02.077929",
     "exception": false,
     "start_time": "2022-09-27T15:23:02.067517",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### CONDUCT DESCRIPTIVE ANALYSIS"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "89949537",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:02.101628Z",
     "iopub.status.busy": "2022-09-27T15:23:02.100440Z",
     "iopub.status.idle": "2022-09-27T15:23:02.408084Z",
     "shell.execute_reply": "2022-09-27T15:23:02.406230Z"
    },
    "papermill": {
     "duration": 0.322177,
     "end_time": "2022-09-27T15:23:02.410562",
     "exception": false,
     "start_time": "2022-09-27T15:23:02.088385",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "      0     405     720    1316    1307 3356649 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Descriptive analysis on ride_length (all figures in seconds)\n",
    "\n",
    "summary(All_Trips_v2$ride_length)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "c97fd602",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:02.440639Z",
     "iopub.status.busy": "2022-09-27T15:23:02.438925Z",
     "iopub.status.idle": "2022-09-27T15:23:27.467667Z",
     "shell.execute_reply": "2022-09-27T15:23:27.466156Z"
    },
    "papermill": {
     "duration": 25.044675,
     "end_time": "2022-09-27T15:23:27.470115",
     "exception": false,
     "start_time": "2022-09-27T15:23:02.425440",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>All_Trips_v2$member_casual</th><th scope=col>All_Trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1920.1327</td></tr>\n",
       "\t<tr><td>member</td><td> 818.0129</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " All\\_Trips\\_v2\\$member\\_casual & All\\_Trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1920.1327\\\\\n",
       "\t member &  818.0129\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| All_Trips_v2$member_casual &lt;chr&gt; | All_Trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 1920.1327 |\n",
       "| member |  818.0129 |\n",
       "\n"
      ],
      "text/plain": [
       "  All_Trips_v2$member_casual All_Trips_v2$ride_length\n",
       "1 casual                     1920.1327               \n",
       "2 member                      818.0129               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>All_Trips_v2$member_casual</th><th scope=col>All_Trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>958</td></tr>\n",
       "\t<tr><td>member</td><td>576</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " All\\_Trips\\_v2\\$member\\_casual & All\\_Trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 958\\\\\n",
       "\t member & 576\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| All_Trips_v2$member_casual &lt;chr&gt; | All_Trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 958 |\n",
       "| member | 576 |\n",
       "\n"
      ],
      "text/plain": [
       "  All_Trips_v2$member_casual All_Trips_v2$ride_length\n",
       "1 casual                     958                     \n",
       "2 member                     576                     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>All_Trips_v2$member_casual</th><th scope=col>All_Trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>3356649</td></tr>\n",
       "\t<tr><td>member</td><td>  93596</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " All\\_Trips\\_v2\\$member\\_casual & All\\_Trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 3356649\\\\\n",
       "\t member &   93596\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| All_Trips_v2$member_casual &lt;chr&gt; | All_Trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 3356649 |\n",
       "| member |   93596 |\n",
       "\n"
      ],
      "text/plain": [
       "  All_Trips_v2$member_casual All_Trips_v2$ride_length\n",
       "1 casual                     3356649                 \n",
       "2 member                       93596                 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>All_Trips_v2$member_casual</th><th scope=col>All_Trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>0</td></tr>\n",
       "\t<tr><td>member</td><td>0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " All\\_Trips\\_v2\\$member\\_casual & All\\_Trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 0\\\\\n",
       "\t member & 0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| All_Trips_v2$member_casual &lt;chr&gt; | All_Trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 0 |\n",
       "| member | 0 |\n",
       "\n"
      ],
      "text/plain": [
       "  All_Trips_v2$member_casual All_Trips_v2$ride_length\n",
       "1 casual                     0                       \n",
       "2 member                     0                       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Members and casual users comparation\n",
    "aggregate(All_Trips_v2$ride_length ~ All_Trips_v2$member_casual, FUN = mean)\n",
    "aggregate(All_Trips_v2$ride_length ~ All_Trips_v2$member_casual, FUN = median)\n",
    "aggregate(All_Trips_v2$ride_length ~ All_Trips_v2$member_casual, FUN = max)\n",
    "aggregate(All_Trips_v2$ride_length ~ All_Trips_v2$member_casual, FUN = min)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "bc8a3d0a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:27.500309Z",
     "iopub.status.busy": "2022-09-27T15:23:27.498984Z",
     "iopub.status.idle": "2022-09-27T15:23:32.887491Z",
     "shell.execute_reply": "2022-09-27T15:23:32.885869Z"
    },
    "papermill": {
     "duration": 5.406488,
     "end_time": "2022-09-27T15:23:32.889850",
     "exception": false,
     "start_time": "2022-09-27T15:23:27.483362",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>All_Trips_v2$member_casual</th><th scope=col>All_Trips_v2$day_of_week</th><th scope=col>All_Trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1820.9160</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 799.4950</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1912.5269</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 794.8517</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>2082.3740</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 915.8742</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>2253.9949</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 939.4763</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1662.1955</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 766.5710</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1678.3396</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 767.2874</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>1659.4383</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 769.1496</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " All\\_Trips\\_v2\\$member\\_casual & All\\_Trips\\_v2\\$day\\_of\\_week & All\\_Trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Friday    & 1820.9160\\\\\n",
       "\t member & Friday    &  799.4950\\\\\n",
       "\t casual & Monday    & 1912.5269\\\\\n",
       "\t member & Monday    &  794.8517\\\\\n",
       "\t casual & Saturday  & 2082.3740\\\\\n",
       "\t member & Saturday  &  915.8742\\\\\n",
       "\t casual & Sunday    & 2253.9949\\\\\n",
       "\t member & Sunday    &  939.4763\\\\\n",
       "\t casual & Thursday  & 1662.1955\\\\\n",
       "\t member & Thursday  &  766.5710\\\\\n",
       "\t casual & Tuesday   & 1678.3396\\\\\n",
       "\t member & Tuesday   &  767.2874\\\\\n",
       "\t casual & Wednesday & 1659.4383\\\\\n",
       "\t member & Wednesday &  769.1496\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| All_Trips_v2$member_casual &lt;chr&gt; | All_Trips_v2$day_of_week &lt;chr&gt; | All_Trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Friday    | 1820.9160 |\n",
       "| member | Friday    |  799.4950 |\n",
       "| casual | Monday    | 1912.5269 |\n",
       "| member | Monday    |  794.8517 |\n",
       "| casual | Saturday  | 2082.3740 |\n",
       "| member | Saturday  |  915.8742 |\n",
       "| casual | Sunday    | 2253.9949 |\n",
       "| member | Sunday    |  939.4763 |\n",
       "| casual | Thursday  | 1662.1955 |\n",
       "| member | Thursday  |  766.5710 |\n",
       "| casual | Tuesday   | 1678.3396 |\n",
       "| member | Tuesday   |  767.2874 |\n",
       "| casual | Wednesday | 1659.4383 |\n",
       "| member | Wednesday |  769.1496 |\n",
       "\n"
      ],
      "text/plain": [
       "   All_Trips_v2$member_casual All_Trips_v2$day_of_week All_Trips_v2$ride_length\n",
       "1  casual                     Friday                   1820.9160               \n",
       "2  member                     Friday                    799.4950               \n",
       "3  casual                     Monday                   1912.5269               \n",
       "4  member                     Monday                    794.8517               \n",
       "5  casual                     Saturday                 2082.3740               \n",
       "6  member                     Saturday                  915.8742               \n",
       "7  casual                     Sunday                   2253.9949               \n",
       "8  member                     Sunday                    939.4763               \n",
       "9  casual                     Thursday                 1662.1955               \n",
       "10 member                     Thursday                  766.5710               \n",
       "11 casual                     Tuesday                  1678.3396               \n",
       "12 member                     Tuesday                   767.2874               \n",
       "13 casual                     Wednesday                1659.4383               \n",
       "14 member                     Wednesday                 769.1496               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Average ride time by each day for members vs casual users\n",
    "aggregate(All_Trips_v2$ride_length ~All_Trips_v2$member_casual + All_Trips_v2$day_of_week, FUN = mean)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "ffeb3a49",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:32.921737Z",
     "iopub.status.busy": "2022-09-27T15:23:32.920335Z",
     "iopub.status.idle": "2022-09-27T15:23:32.995479Z",
     "shell.execute_reply": "2022-09-27T15:23:32.993909Z"
    },
    "papermill": {
     "duration": 0.09271,
     "end_time": "2022-09-27T15:23:32.997374",
     "exception": false,
     "start_time": "2022-09-27T15:23:32.904664",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Arrange the days of the week in an orderly manner\n",
    "All_Trips_v2$day_of_week <- ordered(All_Trips_v2$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "3399e313",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:33.075683Z",
     "iopub.status.busy": "2022-09-27T15:23:33.074363Z",
     "iopub.status.idle": "2022-09-27T15:23:44.971838Z",
     "shell.execute_reply": "2022-09-27T15:23:44.970377Z"
    },
    "papermill": {
     "duration": 11.913749,
     "end_time": "2022-09-27T15:23:44.974431",
     "exception": false,
     "start_time": "2022-09-27T15:23:33.060682",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>All_Trips_v2$member_casual</th><th scope=col>All_Trips_v2$day_of_week</th><th scope=col>All_Trips_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>2253.9949</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 939.4763</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1912.5269</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 794.8517</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1678.3396</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 767.2874</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>1659.4383</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 769.1496</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1662.1955</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 766.5710</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1820.9160</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 799.4950</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>2082.3740</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 915.8742</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " All\\_Trips\\_v2\\$member\\_casual & All\\_Trips\\_v2\\$day\\_of\\_week & All\\_Trips\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sunday    & 2253.9949\\\\\n",
       "\t member & Sunday    &  939.4763\\\\\n",
       "\t casual & Monday    & 1912.5269\\\\\n",
       "\t member & Monday    &  794.8517\\\\\n",
       "\t casual & Tuesday   & 1678.3396\\\\\n",
       "\t member & Tuesday   &  767.2874\\\\\n",
       "\t casual & Wednesday & 1659.4383\\\\\n",
       "\t member & Wednesday &  769.1496\\\\\n",
       "\t casual & Thursday  & 1662.1955\\\\\n",
       "\t member & Thursday  &  766.5710\\\\\n",
       "\t casual & Friday    & 1820.9160\\\\\n",
       "\t member & Friday    &  799.4950\\\\\n",
       "\t casual & Saturday  & 2082.3740\\\\\n",
       "\t member & Saturday  &  915.8742\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| All_Trips_v2$member_casual &lt;chr&gt; | All_Trips_v2$day_of_week &lt;ord&gt; | All_Trips_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Sunday    | 2253.9949 |\n",
       "| member | Sunday    |  939.4763 |\n",
       "| casual | Monday    | 1912.5269 |\n",
       "| member | Monday    |  794.8517 |\n",
       "| casual | Tuesday   | 1678.3396 |\n",
       "| member | Tuesday   |  767.2874 |\n",
       "| casual | Wednesday | 1659.4383 |\n",
       "| member | Wednesday |  769.1496 |\n",
       "| casual | Thursday  | 1662.1955 |\n",
       "| member | Thursday  |  766.5710 |\n",
       "| casual | Friday    | 1820.9160 |\n",
       "| member | Friday    |  799.4950 |\n",
       "| casual | Saturday  | 2082.3740 |\n",
       "| member | Saturday  |  915.8742 |\n",
       "\n"
      ],
      "text/plain": [
       "   All_Trips_v2$member_casual All_Trips_v2$day_of_week All_Trips_v2$ride_length\n",
       "1  casual                     Sunday                   2253.9949               \n",
       "2  member                     Sunday                    939.4763               \n",
       "3  casual                     Monday                   1912.5269               \n",
       "4  member                     Monday                    794.8517               \n",
       "5  casual                     Tuesday                  1678.3396               \n",
       "6  member                     Tuesday                   767.2874               \n",
       "7  casual                     Wednesday                1659.4383               \n",
       "8  member                     Wednesday                 769.1496               \n",
       "9  casual                     Thursday                 1662.1955               \n",
       "10 member                     Thursday                  766.5710               \n",
       "11 casual                     Friday                   1820.9160               \n",
       "12 member                     Friday                    799.4950               \n",
       "13 casual                     Saturday                 2082.3740               \n",
       "14 member                     Saturday                  915.8742               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Average ride time by each day for members vs casual users\n",
    "aggregate(All_Trips_v2$ride_length ~ All_Trips_v2$member_casual + All_Trips_v2$day_of_week, FUN = mean)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "443d012c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:45.003082Z",
     "iopub.status.busy": "2022-09-27T15:23:45.001782Z",
     "iopub.status.idle": "2022-09-27T15:23:57.913957Z",
     "shell.execute_reply": "2022-09-27T15:23:57.912478Z"
    },
    "papermill": {
     "duration": 12.929166,
     "end_time": "2022-09-27T15:23:57.916426",
     "exception": false,
     "start_time": "2022-09-27T15:23:44.987260",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>weekday</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>481104</td><td>2253.9949</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>286373</td><td>1912.5269</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td>274388</td><td>1678.3396</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td>278948</td><td>1659.4383</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>286064</td><td>1662.1955</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>364075</td><td>1820.9160</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td>557994</td><td>2082.3740</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td>376117</td><td> 939.4763</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>416204</td><td> 794.8517</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>465509</td><td> 767.2874</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>477156</td><td> 769.1496</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>451520</td><td> 766.5710</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>446423</td><td> 799.4950</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td>433041</td><td> 915.8742</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & weekday & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 481104 & 2253.9949\\\\\n",
       "\t casual & Mon & 286373 & 1912.5269\\\\\n",
       "\t casual & Tue & 274388 & 1678.3396\\\\\n",
       "\t casual & Wed & 278948 & 1659.4383\\\\\n",
       "\t casual & Thu & 286064 & 1662.1955\\\\\n",
       "\t casual & Fri & 364075 & 1820.9160\\\\\n",
       "\t casual & Sat & 557994 & 2082.3740\\\\\n",
       "\t member & Sun & 376117 &  939.4763\\\\\n",
       "\t member & Mon & 416204 &  794.8517\\\\\n",
       "\t member & Tue & 465509 &  767.2874\\\\\n",
       "\t member & Wed & 477156 &  769.1496\\\\\n",
       "\t member & Thu & 451520 &  766.5710\\\\\n",
       "\t member & Fri & 446423 &  799.4950\\\\\n",
       "\t member & Sat & 433041 &  915.8742\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | weekday &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun | 481104 | 2253.9949 |\n",
       "| casual | Mon | 286373 | 1912.5269 |\n",
       "| casual | Tue | 274388 | 1678.3396 |\n",
       "| casual | Wed | 278948 | 1659.4383 |\n",
       "| casual | Thu | 286064 | 1662.1955 |\n",
       "| casual | Fri | 364075 | 1820.9160 |\n",
       "| casual | Sat | 557994 | 2082.3740 |\n",
       "| member | Sun | 376117 |  939.4763 |\n",
       "| member | Mon | 416204 |  794.8517 |\n",
       "| member | Tue | 465509 |  767.2874 |\n",
       "| member | Wed | 477156 |  769.1496 |\n",
       "| member | Thu | 451520 |  766.5710 |\n",
       "| member | Fri | 446423 |  799.4950 |\n",
       "| member | Sat | 433041 |  915.8742 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual weekday number_of_rides average_duration\n",
       "1  casual        Sun     481104          2253.9949       \n",
       "2  casual        Mon     286373          1912.5269       \n",
       "3  casual        Tue     274388          1678.3396       \n",
       "4  casual        Wed     278948          1659.4383       \n",
       "5  casual        Thu     286064          1662.1955       \n",
       "6  casual        Fri     364075          1820.9160       \n",
       "7  casual        Sat     557994          2082.3740       \n",
       "8  member        Sun     376117           939.4763       \n",
       "9  member        Mon     416204           794.8517       \n",
       "10 member        Tue     465509           767.2874       \n",
       "11 member        Wed     477156           769.1496       \n",
       "12 member        Thu     451520           766.5710       \n",
       "13 member        Fri     446423           799.4950       \n",
       "14 member        Sat     433041           915.8742       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# analyze ridership data by type and weekday\n",
    "All_Trips_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>%  #creates weekday field using wday()\n",
    "  group_by(member_casual, weekday) %>%  #groups by usertype and weekday\n",
    "  summarise(number_of_rides = n()\t\t\t\t\t\t\t#calculates the number of rides and average duration \n",
    "  ,average_duration = mean(ride_length)) %>% \t\t# calculates the average duration\n",
    "  arrange(member_casual, weekday)\t\t\t\t\t\t\t\t# sorts"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "54503b4d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:23:57.946165Z",
     "iopub.status.busy": "2022-09-27T15:23:57.944825Z",
     "iopub.status.idle": "2022-09-27T15:24:13.029450Z",
     "shell.execute_reply": "2022-09-27T15:24:13.027245Z"
    },
    "papermill": {
     "duration": 15.103051,
     "end_time": "2022-09-27T15:24:13.032504",
     "exception": false,
     "start_time": "2022-09-27T15:23:57.929453",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ4BU1d3A4bO90qsgNkBREEVN1FiwoEYwGg0i9oZYsEUsKBYEu69YUMFgNxas\niEaNhYjG3mJHjRVBpXd22TLvh8WVKC6zCzuDZ5/n08ydu/f+j0vIjzstI5FIBAAAfvsy0z0A\nAACrh7ADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIhEdroHSJs5c+ake4Sf5Ofn\n5+XlVVRULFy4MN2zpEhBQUFubm55efmiRYvSPUuKNMAlFxYW5uTklJWVLV68ON2zpEgDXHJR\nUVF2dvbSpUuXLFmS7llSZI1dcrNmzdI9AunXcMOusrJyjfrWjczMzMrKyoqKinQPkjqZmZkZ\nGRkNZ8kZGRkNbcmhof6WQwgNbcl+y7CG8FQsAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJLLTPQAArKpGVw5P2bkqQygNIVx4RcrOCMlz\nxQ4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS2ekeIG2aNWuWkZGR7imWqZok\nOzu7RYsW6Z4lRaqWnJOTY8kRq1pybm5uQ1tyXl5ebm5uumdJkTVkyUtTfsb8/Py8vLyUn/ZX\nzZo1K90jsEZouGG3cOHCRCKR7imWKSgoyM3NraioWLhwYbpnSZGqJZeXly9atCjds6RIYWFh\nTk5OA1xyWVnZ4sWL0z1LijTAJRcVFWVnZ6d9yfkpP+PSpUuXLFmS8tPCSjTcsCsrK1tzwq7q\nX7qJRKKsrCzds6RI1b90G9SSKysrgyXHrupvlcrKSktOsdSHXdqXDCvkNXYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACRyE73AGu0RlcOT9m5SkPI\nunhkyk4HAMTHFTsAgEgIOwCASAg7AIBICDsAgEh48wRQjzKefymVp5vRbaNUng5gTeOKHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkstM9ADQgGc+/lMrTzei2USpPB0DauWIHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABCJ7HQPABCVjOdfSuXpZnTbKJWnA9ZwrtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEwsedALBKfMILrDlcsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiER2ugcAgN+Y/D0PCK++\nlbLTzei2UcrOxW+dK3YAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkchO9wA0XBnPv5TiM87otlGKzwgAqeSKHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk0hB2pfPnLalMpP68\n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\nhxAKszJLZv9j5o8vHCyZ9eoJE6dW77nSg9fW6rxi99uSnZ2dSNTxv1ocsrPT+dvPzEzDPyrS\nu+SMX7nCX3/Su96Qjt9y2pfcAH/LqWfJK1ReXp6CSWp26hM3jt3w4D07dtu3/95bdm7+wcRx\ndz3z6aZH3HVo6zpesctrlX/Z3pt8cPBRv+vY6J1/3f/IpK867DHihm3b1MfpMrKaPPr3Ezrv\ne+2mnXoeecgebXPmPjJ2zHcVRTc8eERhq/xeLU7415V7nZhz+pZrF37x4as3j5nQsW3+0ilv\nX3f3A0cf2LfJehf2avW350bs2PuLI7fpukHl3K/G33xrVk6LYZf0CCHsfeiGF170xma7HHbm\nIbuUfT/59pHX/tAyN3y77PdV2Kp/zQev7UIa3P88qjVu3HilfwWXpmaUNGmAXxPX0Jbc0NYb\nLHk5Ef/1tcIlR7zekNwf7JkzZ6ZgkpoVr9PvvfeanHXWpY8+fMv4pbkbbLjJBWOfPPfoP9b5\ngFtf8/Jhn46+/s5Hnrl3dqN2Gx117tirhx1d/f/cq/106+5z9cdPdDntkuvvHDWiNKO469Z/\nuuOiaw7ZsGkIYfw7jw0aOHT8qAvuymmzxZZ/GPvmF9ssufl3uw0747hBf9l/v6LcJhPef/as\nUy549Mm7n7l7UUGztbbY4aAHL7j8z2sXhxB6XPj89YsHjHrouTOOv6cskWi/3WFPXzlj+z88\nueysmfk1H7y2q8hYjVetOhbkfL6kbHUdrb7NmjVrpWtvdOXw1AwTQsjf84CUnavKjG4bpfiM\nyysuLi549a0UnzS9S27UqFH+K2+m8ozpXW9okEtu3Lhx3stvpPKMv7bkiP/6WuGSU7nesGYs\n+ZdatmxZ35OwKipL5387o3ydtZvX61ka7hU7AICUycxrvM7a9X4WYQcAxOyrR/bqcdRLNeyQ\n16Tn91+NT9k89UrYAQAxW2/fx+fsm+4hUsXHnQAARELYAQBEYnWG3bBrrluNRwMAoFZqCrtd\nNut29IvfVd3eeOONh3+zoOZjHXrs8attLgAAaqmmN09M+++nn10y9t/n75GTGSZPnvzeG6+9\n9l2jFe659dZb1894AAAkq6awG33i9rtcccEOT11Qdfehvrs99Ct7NvDv5gIAWBPUFHY7Xz7x\ni/1feOuL7ysSif79++9+7a1Htanj170BAL8hCxas5PVXddao0Yqf/WO1WMnn2K2/1Y7rbxVC\n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\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIpGd7gHSpqCgIJFIpHuKdCooKEj3CKnW0Jbc0NYbLLlh\nsOQVWrJkSQomYc3XcMMuJydnpftUpmCO9MnNzf3lRkuOyQrXGyw5LpZcJeL1hl//LS9P2FGl\n4Ybd/PnzV3rFrlFqRkmTefPm/XKjJcdkhesNlhwXS64S8XrDr/+W4Ze8xg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEtmpOlHl8/fd+NgL\nb09ZkLVxt62POPnI9Quy6uFQq/EsAAC/MSm6YvfFQ+dePe6Vbfc75oJTDyv8/Nmhp41N1MOh\nVuNZAAB+c1ISdomlI8d93OnQi/r22rbrljucevmghVOfuPe7Rav5UKvxLAAAv0GpCLvSeS98\nU1Kx5y7tqu7mNdths+LcNyb9EEKoLJ/1wOhLBhzaf79+B5109uXPTZ7zs59NJEq/+mpKMoeq\n4SEAgIYgFa+xW7rovRDCJoU/natrYfbTH8wLIdw15NSnS7sdc8rQDo0zJr/8+HVDjq248fbd\n2xVW71lR8uWpp106/uE7VnqoGh6q8sQTT7zwwgvVd88777zs7JS9xHBN1KhRo3SPkGoNbckN\nbb3BkhsGS16hBQsWpGAS1nypKJvK0kUhhJY5P72PoWVOVtn8spJZ4x/+bP4l9w7uWpgdQui4\nYbfy1w++b/RHu4/YqraHqvmhKv/973+fffbZ6rsXXnhhXl5ezZOXJrvE36QVLt+SY/Jrf8It\nOSaWXCXi9YZf/y0vT9hRJRVhl5lXGEKYXVbZNnfZM78zyyqym2Uv/PadRCJxdv/9lt+5qPzb\nELYKiYqS0rIQQnlJaQihpKSk5kPV/FCVTp069erVq/pueXn5ykcffmVdFlx72dnZiaysRCKx\ndOnS1JwxhFBauqK/CVO75MrKyrKyspXvvZo0tCWveL0hdUvOyclJZGZacr1aQ5ZcUVGR1F+q\nq0N6/4cc1pwlw4qkIuxyCjcNYdLkJWVtc5f9m+PTJeVNujbJLsrNyCp64P47M5bbOSMjK4Sw\neMa9/QfcX72xX79+VTdGjj1+hYeq4SzVB+ndu3fv3r2r786aNSuRWFPeNVtUVFRQUFBRUdFw\n/slVXFyclZXVoJbcqFGjBrjkvLy88vLyhrPkxo0b5+bmlpWVNZwlN2nSJDMzs0H9lquWXFZW\ntnDhwnTPAj+XijdP5DfduX1u1hMvz6i6W7bw7TcXLN1i57aFbfYIlYufmFGWs0z2XcPPHfX8\n9yGEwtaHTJgwYcKECQ+PuyIzu9mEH3Vq3WuFh6rhLClYIADAmiAlH3eSkTO4b5fPbhk28e1P\np33x/s3njSxqv9uh7YpyG201YPMWfz9rxFMvvvXVF5+Mv2nIYx/P2mXbVnU41EoeAgBoAFL0\nttBOB1x0Quk194w8b1ZJRsfNeo4YfEzV0697nX916d+uf2DM5XPKctqv3/20S4duVpRTt0PV\n/BAAQPQy1pzXmaXYGvgau/Ly8rlz56Z7lhQpLi7Oz88vKyubN2/eyveOQtULzhrgkpcuXTp/\n/vx0z5IiVa+xKy0tbVAvOMvJyWmASy4pKVnTXmPXsmXLdI9A+qXoK8UAAKhvwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASGYlEIt0zpMesWbPWnLXPmDFjzpw5BQUFHTp0SPcsKTJ9+vS5\nc+c2qCX/8MMP8+bNKyoqat++fbpnSZHvv/9+/vz5xcXF7dq1S/csKTJt2rSFCxc2bty4bdu2\n6Z4lRaZOnbpo0aImTZq0adMm3bOkyJQpU5YsWdK0adPWrVune5b/0bJly3SPQPo13LBbo1x5\n5ZXjxo3bZJNN7rzzznTPkiIXX3zxI4880qNHj7Fjx6Z7lhQ5//zzn3jiia233vqGG25I9ywp\nMmTIkGeffXbHHXccOXJkumdJkdNOO+2FF17o1avXZZddlu5ZUmTQoEGvvfZa7969hw8fnu5Z\nUuSYY45555139t1336FDh6Z7Fvg5T8UCAERC2AEARELYAQBEwmvs1giffPLJlClTGjdu/Pvf\n/z7ds6TIxx9/PHXq1KZNm2611VbpniVFPvzww++++6558+ZbbLFFumdJkffee2/69OmtWrXa\nbLPN0j1Lirz77rszZsxo3bp19+7d0z1Lirz99tuzZ89ea621unbtmu5ZUuTNN9+cO3du+/9v\n774DmjjbAIA/l50wQ2QZhoAgiArUUa0blVoHIkWmgrtVtBWlKuIEFamLCmrVihW04qwopVbt\nsGqtrZ/VqozaVkFA2QhhhSTv90cwRlsjbYGY4/n9dffee8fz3CUvT3IjYrGLi4u2Y0HoeVjY\n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\n"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Visualization: number of rides by rider type\n",
    "\n",
    "All_Trips_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "62f880a6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:24:13.062788Z",
     "iopub.status.busy": "2022-09-27T15:24:13.061458Z",
     "iopub.status.idle": "2022-09-27T15:24:27.447969Z",
     "shell.execute_reply": "2022-09-27T15:24:27.445501Z"
    },
    "papermill": {
     "duration": 14.404566,
     "end_time": "2022-09-27T15:24:27.450648",
     "exception": false,
     "start_time": "2022-09-27T15:24:13.046082",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeYCc8/3A8e/M3ru5DxJJEEmIOEP7Qx0plRI0joYEDVFHXEXFHYpQ6ooQR9St\n7oq7aBFCHS2lbuK+4si9STZ7zvz+WFZCspmN7Mz2u6/XP2aemXmezzc26+2ZK5FOpwMAAP/7\nkrkeAACAlUPYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEIj/XAzSv8vLyurq6\nXE/xndLS0oKCgpqamoqKilzPkj1FRUXFxcWpVGr+/Pm5niV78vPzy8rKQgjl5eWt52PAE4lE\nu3btQggLFy6sra3N9TjZ07Zt22QyWVlZWVVVletZsscvtFzP8n0dO3bM9QjkXuRhl0qlWlTY\nJRKJZDKZSCRa1FRZkEwmQwitatV5eXn1q06lUqlUKtfjZEkymaxfdTqdblX/uhsW3qpWXf8L\nLbSyVYcQkslka/sJ53+Ip2IBACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAikZ/rAXKv7QXjsnasdAhVISTOujBrRwQAWo/Iw65NmzZ5eXmN\n36c6O6MsprCwsHPnzlk/bI4lk8lWuOoQQseOHXM9Qg60bds21yNkVSKRCCGUlJSUlJTkepbs\nqV91UVFRYWFhrmfJtry8vJb2C23WrFm5HoEWIfKwW7RoUV1dXeP3yf6v4ZqamoULF2b9sDlT\nXFxcXFycSqXKy8tzPUv2FBQUlJWVhRDKy8vT6XSux8mSRCLRvn37EMLChQtra2tzPU72tGvX\nLplMVlVVVVZW5nqW7CkrKysoKPALDVqUyMOurq6uBf7XJZ1Ot8Cpmk8qlaq/0KpWnUx+8wLW\nurq6hj+B6DWsOpVKtap/3fVa26rr/4+lta26/q9za/s1zv8Qb54AAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiER+rgcAgB+l7QXjsnm4qhDyz7k4m0eEzDljBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQifzsHCZdO+eeq696+NlXZlUmu/fqN3TkoTsM\n7BZCCCH15O1XPPDUS5/Oz1t3/c1GHXVA75K8bx+0rJsaeQgAQOuVpTN2/zjnuJuf/HKXUUed\nd9aJ2/WpuuKMI+77dEEI4YPJp158x3Nb7HHw6cfsV/r+Y2OPvTr97UOWdVMjDwEAaM2yccau\nrurTSf+ZOeicC3ddr2MIoV//Db749/D7Jr2969kbjr/jrb4jxw/bvncIoe95Yc/9L7jti5H7\ndC8L6eql39StYJkPAQBo3bJxxq6u8qM1evfeaa22325IDGxfVD1vQdW8pz6prBuy3Wr1W4s6\nbr1Rm8IXpn4VQljWTY08BACglcvGGbvC9ltPmLB1w9WaBW9fN33Bmgf3rV54ZwhhQOl3M6xX\nmv+P1+eFEKoXvrrUm6q3Xvr2hqvTp09/8803G66uv/76ZWUt7mReMpksKirK9RTZk5f3zYsg\nW9Wq8/O/+SktLCxMp1vL6wUSiUT9hYKCgobLrUH9YvPy8lrVD3kymQytb9X1EolES1t1VVVV\nrkegRcjSmycafPTC3yZeen3tWjudMrhHzUcLQwhdCr5760OXgrya8poQQqpq6Tcta3vD1Rdf\nfHHcuHENV2+++eZu3bo1PlL2/yrk5+e3bdt2+feLSzKZbIWrDiG0adMm1yPkQElJSa5HyIGi\noqKW9h/7LGgJv9Cy/2u8Bf5CE3bUy17YVc15+7pLJj7yyuxBww774z7bFScS84tKQwiza1Ld\nCr95RnhmTV1+x/wQQnIZNy1re9ZWAQDQYmUpieZ/+NiY4y/P23DI+Vfvt06X4vqNBaUbhDD1\n7UU13Qq/+X/caYtq26/XvpGbGnlIvaFDhw4dOrTh6ty5c2fOnNn4bNn/f67q6ury8vKsHzZn\nSktLS0tLU6nU7Nmzcz1L9hQWFrZr1y6EMHv27FQqletxsiSZTHbq1CmEUF5eXl1dnetxsqdT\np07JZLKioqKioiLXs2RPu3btCgsLq6qq5s+fn9tJsv9rvK6ubs6cOVk/LCxfNt48kU5V/PHk\nK4t+8bsr/nBIQ9WFEIo7bNujMO+hZ2fUX61Z8NKL86s32bZbIzc18hAAgFYuG2fsKr78y5sV\nNQduWPafF19s2FhQ0m+j9dqPGdb/+GvPmLLqCf07VN03cXxZj8EjVysLIYREwbJuWuZDAABa\nt2yE3bx3PgohXHveHxff2H6t0/4y4ad9h599eNWEW8efNqsy0WejQWeNObjhfXTLuqmRhwAA\ntGbZCLvVtj33/m2XcVsib/D+Ywbv35SbGnkIAEArlqWvFAMAoLkJOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI5Od6AHKj7QXjsnm4qhAKzp2QzSMCQCvk\njB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk8nM9AAArTdsLxmXtWOkQqkII4y7I2hGB5XLG\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBL5uR6g\neRUVFRUVFeV6iu/Ly8srKyvL9RTZlkgkWtWq8/Ly6i+Ulpam0+ncDpM1iUSi/kJxcXFBQUFu\nh8mm+oUXFBS0qh/yevn5+a1w1clksqWteuHChbkegRYh8rBLJlviKclEItEyB2turWrVDYmT\nTCZbYdi1zh9yq25VWueqafkiD7tFixbV1tY2fp+22RllMbW1tfPnz8/6YZeQ/VWn0+mcrzqb\nCgsL609ZLViwIJVK5XqcLEkmk506dQohLFq0qLq6OtfjZE+nTp0SiUR1dXVFRUVuJ8n+X+2a\nmpqc/9XO/qpTqVTOVw1L5X84AAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACKRn+sBIHvaXjAum4erCqHovEuzeUQAWjln7AAAIiHsAAAiIewAACIh7AAAIuHN\nE0CcsvlemZr6f5z+p6wdEWCphB3EL5uJU1X/j7FnZ+2IADTwVCwAQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJPKzfLwbDtu/eNykEV1L\n6q9+9dzYg899bfE7jL7xzp07FocQQkg9efsVDzz10qfz89Zdf7NRRx3QuySv0e0AAK1aNsMu\n/d4/r79n+tw90+mGTXP/O7ek86+OPni9hi1rlRXWX/hg8qkX3/HxyCOO/G3H2gevunzssbW3\nXHloYtnbAQBauSyF3ZdPTzj1z898Pa/qe9u/frO8w4Cf/exn633/Aenq8Xe81Xfk+GHb9w4h\n9D0v7Ln/Bbd9MXKfbgVL3969LCvrAABoubL0GrtOGw476fRzLzzvxO9tf6W8quPADnWLyr/8\nem56se1V8576pLJuyHar1V8t6rj1Rm0KX5j61bK2Z2MNAAAtW5bO2BW279m3fairLv7e9pcX\n1KT+eeleE9+uSafzy7rusM/Ro3+1YQiheuGrIYQBpd+Nt15p/j9en1e99dK3N1x9+OGHL7jg\ngoarkyZN6tevX+OzVa/4slZQYWFh586ds37YJWR/1clkshWuOoTQsWPHXBx2CdlfeNu2bbN+\nzO/L/qpLSkpKSkqyftglZH/VRUVFhYWFWT/sErK/6ry8vJz/QvueWbNm5XoEWoRsv3licXXV\nn89L5K3ZaYvzbj2rfV3583+75qKrTy3qd9Oo/h1SVQtDCF0KvntXRJeCvJrymmVtb7haU1NT\nXl7ecDWVSiUSLfEFeC1zquZm1a2HVbcqrXPhrXPVtHy5DLu8wh533XXXt9e6DNr7pGn/GD7l\nmtdHXbhVsqg0hDC7JtWt8Jsni2fW1OV3zF/W9oZ9rrvuur/73e8arrZt23bhwoWNj5H9P4K6\nurrKysqsH3YJ2V91Op2uqKjI+mGXkJMf94qKinQ6vfz7NafsL7yysrKuri7rh11C9lddXV1d\nU1Oz/Ps1p+yvura2tqrq+6+fzrLW+QsNliqXYfdDm65SMmXOjBBCQekGIUx9e1FNt8Ki+pum\nLaptv177ZW1v2EO/fv0Wf+517ty5ixYtavyg2X/GqK6ubrlTNbfsrzqdTrfCVYcQKisrU6lU\nLo78newvvLq6uro6J099fyf7q66trW2FP+St8xdaKpXK+aphqXL5AcVzp11+4EFHfFX97X/z\n0nVTv6joMGDtEEJxh217FOY99OyM+ltqFrz04vzqTbbttqztuRgfAKBlyWXYtVtreOeKr048\n86oXX5/27hv/vW3CCU8tbHvIQWuHEEKiYMyw/u9ee8aUl6ZN/+C1a04bX9Zj8MjVypa5HQCg\n1cvlU7HJ/C5nXX7m9ZNuueTsUyrz263Vd/0TJ4wb2Kag/ta+w88+vGrCreNPm1WZ6LPRoLPG\nHJxodDsAQCuX1bDLK+x5//33L76lqON6h558zqFLvXcib/D+Ywbvn/F2AIDWLZdPxQIAsBIJ\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASOQ36d6zP/tgxsKaH25fZ511VtI8AACsoEzDrnLmY7/e\navhD78xe6q3pdHrljQQAwIrINOz+vOvIh9+dv8thJ+244Zr5iWYdCQCAFZFp2J39woy1ht/9\nwBVDm3UaAABWWEZvnkjXzZ9RU7fG8A2bexoAAFZYRmGXyGvz8w7FH9zwYnNPAwDACsvw404S\ntz94VvXDvxl11o1fLaxt3okAAFghmb7GbthJ963aveDGP4y66fQDO3XrVpK3xBsoPv3002aY\nDQCAJsg07Lp06dKly/ZrbNyswwAAsOIyDbt77rmnWecAAOBHato3T1R8/t+77nv0zQ+mV9Tl\nd19rvV/uNmzTXm2aaTIAAJqkCWE3+Q8j9v3jnVWp775kYuwxh+459pY7xv26GQYDAKBpMnxX\nbPjwr/sOO+uOVQb99o5H//X517PmzJj+wpS7Dvz5qneeNWzk3R8154QAAGQk0zN2Fx5zf5se\no95+7OrS5Dfvh/3Jtr/edNCQ1Brd7vzdRWGPic02IQAAGcn0jN3tMyrWPuTohqqrl0iWHn3k\nOotm3NYMgwEA0DSZhl2bZLLyq8ofbq/8qjKR5/0TAAC5l2nYHdOv/Xs3Hf7inKrFN1bPe+nI\na6a173t0MwwGAEDTZPoauwPuGnf6er/bcs2NfnvkAVtu2Lc4LHr/tWdvuOy6aRWFl/71gGYd\nEQCATGQadh3WOfzNR/N/c/gpk845adK3Gzuts83ll//l0P4dmmk4AAAy14TPseu57SFPvnXw\nZ2//5433p1eFotXWGrDJur0yfSoXAIBm1rRvnggh0bP/T3r2b5ZRAAD4MRoLu4EDByaSRS/9\n5/n6y43c8+WXX17JcwEA0ESNhV2bNm0SyaL6yx06eCEdAECL1ljYPf300w2Xn3jiieYfBgCA\nFZfpmx+22GKLCz9b8MPtXz571NbbjVypIwEAsCKW8+aJ8g/f+6K6LoTw/PPPr/XWW+8sbLfk\n7enX//bUs09/1FzTAQCQseWE3eQdN/vttNn1l2/95f/durT7tFvziJU9FQAATbacsPvZuPGT\n5laGEA499NBBZ128d9eS790hWdB2i18Pa67pAADI2HLCbp3h+68TQgjh9ttv3+23B41erU0W\nZgIAYAVk+gHFy3pXbDpVMX9haNe2dOWNBADAivixXwn22WO7d+667koZBQCAHyPTM3bpugWX\nHXPwjY+/OGtR7eLbv/zk40TJgGYYDACApsk07F4e9/OjLvtPvy0Gr93hrX8899mOQ3crCpVv\nPDEl0WnbK26/sVlH/DGSyWReXl6up/i+RCLRAqfKgta56mQymUgkcj1FtrXMv3rNrXX+1bbq\nFqKuri7XI6xkpXnJHns9+e5t2+R6kBy7uE/HsXO3rJj1YIb3zzTsTpn4Ruf1z5727Nh03YK1\n2nTc6rKbxvZqu+jrqev33mnBamUrOm2zKysrW+7fvarsjLKYgoKCjh07Zv2wS8j+qpPJZCtc\ndWgZX8eX/YW3aZP7N1plf9UlJSUlJd//6IAsy/6qCwsLCwsLs37YJbTOX2jfM3PmzFyPQIuQ\nadg9XV697phdQgiJvDYjVymd8tKssb3alqwy6KZRa+467Opj3jihOYdccQsWLKitrW38Ptn/\n7091dfX8+fOzftglZH/VqVRqzpw5WT/sEnLSGnPmzEmlUrk48neyv/Dy8vKampqsH3YJ2V91\nRUXFokWLsn7YJfiFlh0t4RcaLFWmYdcxP1Ez/5tf05v1LLvzvs/DrmuGENbYo+fcay4OoYWG\nXTqdTqfTuZ5iKVrmVM2t1a661S481yPkQCtcdev8CW91q05XV9UVFOWvvFeVrPQdNipVOzed\n36FlPXfebDJ9V+xBPdq+d/2fPq2qCyH0Gtrjs4f+XL/9y8e/aq7RAIDcuX3dLu3X+MMLfz62\nZ/s2JYV5HVZZ6zen3JQK4cUbThy45qolRW16D9jsjNveXPwhCz5+6pgRO6zetUNRWaf+A7c7\n86qHUj9uh6/ede6gDdYoKyzq0qP/3kdf9Hl1XYaHu36dzh37XFw199+/+fmANkWdFtRlFOJf\nPHPLXoN/0rltcWn7rpsP2fevL8xouOmt+y/f7eebdGlfll9Y0r3PhvufcOns2u/2maqZeflJ\nv92wT7figoJ2nXv9YvhRz8+srL/phF7t2vVa4vzXf8/cNJFIfFRVl+HOmyTTM3ajrzt43LYX\n9umy+jszPumz30EVJx+2xQGr7tG75qKLXu+03oUrdmwAoCWr+PqWrY6cs+8xp23Wq+j+K869\n5dz93/ng2jcerzj22FP3q/vwkj9OHDfyJ9vvPHerdoUhhIXT79143b0+SfTY94CD+3bJe+XJ\nv55x6M73Pnv9yzeOWrEdznjpD5vc+ez2e+4/Zte2r0y96/ZLj3vsqXc/+c+kkmTI5HCp2tn7\nb7zjrK1HnnPpUSXJ5Z8d/PKfZ/f7+enpLj/db/SJq+TNvvvaa0Zs+Uj5Ox8e2Lvdp387Yv3d\nrmy3zqCDfndip8LaN5+5+6YLjn5uep9pN+9c/9gJO2183ONfbjv8kD0P6lX+yYuTrr58+6c/\nmfP5vQUZnJRc7s6bJNOw6z7o/Jcndz/zqgeSiVDWffRtx9y174QLn0+n2/XZ4a5HRq/AgQGA\nFq628oPjHv/8gu1WCyHsv+96JZ13efne96Z++cGWHYpCCEP7vNJ3nykTP5u/1YDOIYQLf3nQ\nJ4m+Uz95aYvOxSGEEP5075iBu48/4I+n7z52rfYrsMN506aOufudC3dfO4QQ0udff/jA3066\n6jcPnjx56BqZHG7+p3+ce+mLjx65SUZLTVePHPrHVIdfvvT+/f3LCkIIJ584rEe37U7d56ED\nnxvxxIl3Jot6vfLfx1Yvqn9Gd1zXnu0mPXJVCDuHEGoXTTv+8em9drzr8dv2qN/ZHm23HHr9\nM3fPXDT8B9/F+kON77ypMnwqNlVVVTVgt9/f/ciUNYryQgjDxz86++O3//vWxzPffWTwKjl+\nFxgA0BwKSvvXR1gIobjTzm3zkl3Wn1AfYSGErj/bOoSwqCYVQqiteOOsN2f3P+zGbzMrhBB2\n+sMlIYQ7rpy2AjsMIbTpfsg3VRdCSOSPvPie0rzk0394MtPDJYpuGr1xhiud//nFj82p3PT8\nS+qrLoRQ3GnQvVdedtqBXUIIw/75zlfT3/w2vEI6tbAqnU7XVXxznGRJYSLMfevuFz/95o1E\nW5z/zIwZMzKpuuXuvKkyOmOXrpvfobTjZre+++TwPg0b2/Vae6MVOyYA8L8gmd958av5iVDU\n9bvPeUkkCxouV85+uC6dfu2i/0tc9P2dzHtt3grsMITQcYNhS9y5uO/OnYof+urpEPbP5HCF\nbTZepSDT9xKUv/tECGHL7VZdfOPWBx62dQghhNIOnWa/8MiNjzz1xrT3P/7ko7defeXzuVXF\n336YVV5Rr7+fO3KXU27+vzVuW2P9zX62+ebbbLfDnsN+2Smzd4c0vvOmyijsEnntx6zb6abr\nXgiLhR0AwDeShSGEDU64ruGEXIOi9pmeNvueH2ZRfiIkkkUZHi6RbMLn7KaqUiGEwmV8nvzk\nMb/Y8+Inegzc7lfbbr7LljuOGbfR54cMPvLr7+6wzQk3fj3q5HvvffDJp/75zKM33Hr1xcf+\nfvN7X39i8GInFBukU0u8MWK5O2+STF9jd9rTD/13y52PuLRk3OhdOhe1krcMAwAZKe60U17i\nmNq56+yww88aNtYuenvy/a9026h0xfY5+/V7QxjccLWu6qMHZlW22+IXzXG4dmtvEsKjz/x7\nZlijXcPGKSce9pdZHa+6eOjwi5/otdOkjx88pOGm6xd7bM2Cd156Y27njTYdcchxIw45LoTw\n1sNnDdjpD0ef+vKbV25RP/vix/rqxdkNl6vnP9/4zpsq01OUu+w1dtGqq195zO5dS9t277lG\n7yX9iAEAgP95+cV9zxjQ6d2/7P/4l9+9OOy2I3bde++9P8m0Nb5vwfQrTvnbB99eq7v1uF0X\n1KV2PX/L5jhcuzVO3qhN4b+OOu7Dym8irHrec/tdcvWD/16ltuLtunS608abNty54otnL/p8\nfgjfnHhb+NWVm2+++V5/ernhDmv+5KchhNqFtSGE0rxk5ey/zfz2hYOVs54/fMrnDfdc7s6b\nKtMzdsXFxSGstvPO3z/hCQAQQjjmoSuuXnvfIX3W333E0E37dXp9yh1/eXTaBqP+MnKVFTxj\nV9S1+E9DB7y+729/2qfty0/cec/Uj3rtcNblW6zaHIdL5LW/7+bD++1+yQZ9Bx3wmx26Fcy9\n5+pJX9SVXX7XqNKuxdt3PvyJC3Y5suC4TXuWfvDG89dMur9Pt+LqT1+69Ja/Hrj3sPZrnrl9\n1z8/ftY2O31wwObrrZWa+9G911yXV9D5jHMGhhCGjlz7zLNf2Gi7/U74zXY1X759w/hLvupS\nGD775muxSruOaHznTV1IpmH3wAMPNHXXAEDr0Wb1vV59tf2JJ557393X3ltduNbaA06/+uFT\nD9xxhXe42YRn95t25WU33fPobbPbrrbOb0+9+uIzDmx4EdxKP9wau1781kP9jz3nspsmnlWV\naLPeZr+68ewJv1m7Qwjh3pcfOOKQsfdOPP0vBatusunPrn7xg80XXfPTwWccf+gRv95zj7LC\n9ve/9tiJR59+38O3PHrLwpKO3TfZep+7Tj9vt55tQggDz3zysoqDJk5+/PjDbq1Jp3tsud8/\nLpix1c8e/uaoyeLGd97UVSQy/FKUefPmNXJr+/btm3rg7Jg7d+5yvyu27QXjsjNMg8RZF5aX\nl2f5oN+T/VUXnDth9uzZy79fc8r+qovOu3T27Nk5/67Y7C+8auzZ1dXVWT7o92R/1XWn/6mi\nYgU/oWBlyf6qw7gLcv5dsdlfdf45F7fA74rt0qVLrkegMamq8s9m1K7es1OzHiXTM3YdOjT2\nvtvW9ZV5AABNlCxqt3rPZj9KpmF3xhlnLHE9XTv9gzfvveO+2YkeZ1x5zkofCwBgpfjonl0G\n/vaZRu5Q1H7Qlx/dm7V5mlWmYXf66af/cOOEC/71i7UHTbjkP2MP2HelTlSC51UAACAASURB\n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\nhB0AQCSEHQBAJIQdAEAkhB0AQCTycz1A88rPz8/Ly8v1FDlWVFSU6xFywKpblda5cKtuPTJZ\ndVVVVRYmoeWLPOyKioqSyeWclazNzii5U1pa+sONVh2lpa46tNaFW3WUrHpZhB31Ig+7hQsX\n1tYu56982+yMkjtz5sz54UarjtJSVx1a68KtOkpWDY3zGjsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwD4//buMyCKa28D+H+279JBkGIFC4qKRDQae40xishFxQb2G2ss\nxIZGxRauNWKJGDVCErElsVxi1MTY442vXdEYsYLSEZa27bwfFhFNUJPADjv7/D4xZ88O/zOz\ne/ZZpgAgEAh2AAAAAAKBYAcAAAAgEAh2AAAAAAKBYAcAAAAgEAh2AAAAAAKBYAcAAAAgEAh2\nAAAAAAKBYAcAAAAgEAh2AAAAAAIh4buAv8Hwc/yGAycuPMwTN2ry9vDJI+oqxXyXBAAAAMA/\n8/uLXdLeuat3nm0TNGb+lFDVnaMR0zYzvksCAAAAqArMLdgxzaqdifWGLQ7u1sanRfspURPU\nyQk7HufzXRYAAAAA/8ws2BU/PfGgSP9eF3fjotyhva+17NfjqfxWBQAAAFAVmNk5dpr8K0TU\nWPW8bB+V5PC1p6WL58+f37NnT+niuHHjXF1dTVlhFWRjY8N3CTzAqC2KZQ4co7YcbzLqvLw8\nE1QCVZ+ZBTtDcT4RVZM+v1qimlSszdWWLqakpBw9erR0cfjw4XK5XNOa6AAAFL9JREFU/NXr\nLK7oIquaP90CGLUglfdqt8yBY9SChFGXB8EOjMws2InkKiLK0hpcZSUHkTO0eonD81G4u7t3\n69atdFGpVBYXv+4tH7m84gsth1QqZSKRwWDQarWv711B/nwLmHDUYrGYSSSMMY1GY7Jfyvuo\nRSIRk0qJSKPRMGaiK3zKfbWbauAcx8lkMkak1WoNBoNpfilVgd0tk8kYx+l0Or1eb7Jfyvuo\nMaGZ7Je+/oMM4BkzC3ZSVVOi4zcLta6ykq8vvxXq7HzsSjv4+/v7+/uXLubk5FSpLzG2trYy\nmUyn01WpqiqbSqWSSCSMMYsatUwmk0qlRKRWq00ZcfglEokcHR2JqLCw0JQfe7xzdHTkOE6j\n0RQUFPBdi+kYJzStVmtRb23jhGYwGCxq1GBGzOziCYV9Zw+ZOOFMunFRq75wPk/zVmdLP4sO\nAAAAgMwu2BEnnR7sfXvLgp8u/JaSdPXzeausPLoPc7fiuywAAAAA/pnZoVgiqjdw8fjiNV+v\nmpdZxHn5dlw0fQzHd0kAAAAAVYH5BTvixN3DpncP47sMAAAAgCrG3A7FAgAAAEA5EOwAAAAA\nBALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAg\nEOwAAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABALB\nDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwA\nAAAABALBDgAAAEAgEOwAAAAABALBDgAAAEAgEOwAAAAABIJjjPFdQyXKycnR6XR8V/Hc48eP\n8/LybGxs3Nzc+K7FdLKzs9PT06VSad26dfmuxXQKCgoePXpERJ6enhKJhO9yTESn0yUlJRFR\njRo1VCoV3+WYTlJSkk6nc3Z2dnBw4LsW00lJSVGr1ZY2oWVlZWVkZMhksjp16vBdy8uqVavG\ndwnAP4EHu6rmo48+OnbsWOfOnZcvX853LaazZcuWjRs3urq6Hjx4kO9aTOfMmTOTJ08moiNH\njljOh31WVlaPHj2IKDo6uk2bNnyXYzq9evVKS0sbP378yJEj+a7FdKZNm3bixImuXbtGRUXx\nXYvpxMTExMTEuLu779+/n+9aAP4EDsUCAAAACASCHQAAAIBAINgBAAAACATOsTOpK1eupKWl\nubi4NGvWjO9aTOfu3bt37txRKBTt2rXjuxbTyczMvHjxIhF16NBBJpPxXY6JaDSaEydOEJGf\nn5+TkxPf5ZjOyZMni4uLvby8LOoKocuXL6enp1vahJaUlJSUlKRUKtu2bct3LQB/AsEOAAAA\nQCBwKBYAAABAIBDsAAAAAATCUu6bajJXj8bvSjj+24MneonKpUb9jr1CBnbx5ruoSjRvUPDl\nfM2gmPhBri/cjfbCsjELzqbWDV71aWg9vmqrbCfHD1n+KO+P7Rwn27dvj+nrqVS3Ppsw41Ba\n7N5ddmLO2PLD5KEb7qtX7txbTyE2tlxYOGrRNdne3Rvf8PviV6NCzndbunqQZ+WUXGFeu6PD\nggKbRcdN97AxeWkm9X8fhS28lf1So8p5YPyWIS81BgQEBG6OH1nd7O9Q/Tfmc/XjR2qFi6uD\npZxWC1UQgl1Fur8vcu7Wy10HjAweVV9uUN+5fCoueubtgjVzewv5fGpOzB2L+23QR82fNzHN\nlgsZYo7jryhTaDZ13tJiHRExfV7EvGUNx80Oq2lDRBwnwD+Eu7/fjCX8d19GYWh1FRExVrQj\nWc2YIT4xe65fyc3uj/yea11znPAGb1E7+tUU9l0+ntGtbItY5vLHbu+995630uw/XP7efH5y\nwYyElguiRzcwWZ0ALzH7916Vsm3XFfcuH08e4mtc9G76lrfsXvj2FdR7/RuuQW9gYpGZ5aHq\nnZuln9qiYdGyZ4Wrk79OIdd2thkP3ngl5jhwu/redkRExPTZRGTj1ahJA3t+S6o81m4D5KKE\nSyfTQoPrEFFh2t5svSy0juzAzkTya09Eek3y2VxN41GNeC60EljUjn41kdS5SZMmr+jA9EWc\nWDFu3DiTlVR5/vl8DsALi/vGWakK9Kw4O7VsS52A8REzRxARMW1AQMCujMLShwb367s2RW38\nOSwocPfDa5HjhwX1CxwyfGz0zrMmrPqfsq0d6mp49HWZY1W3Yk87NR8lLxPU9MXJsavmhw0e\n0K9/yJSIqNP3Sjqb9cDLVf6+Nugyd29cOnpYSNCAwZNmR/148+UDW1UWJ3Ho46hM/fGacTE5\n4Relc1CHIfVy73ytZ0REBan7DIy96+dI5Q+zKOPy2sjZIwcHDwodt37PLzwNpVIYtNlfLJ0R\n0r/f4LAxa3ecJXrNW15gBvfrezA9fUtUROjwFUQUEBCwNbWA76L+qVfN50SanBsbl84ODRkQ\nGBQ8euKsPWeSiWjT8AEbH6vv7w/vP9SC/scaVDUIdhVpVN+mGRfWjZy+IHbPfy//9lDDSKyo\n5+/v/ybPPTgnqnbgpHWbNkwM9D7y1bL4NPOZFkXyUX5Op7bfLFlkmq0XM9qFlT0ThX029aP/\n3mAjpsyN+jjcV3F3RfiUm4U642NmPPC/Lm7WlO9uiId+GLF88ZyeDdnaWf8+nGI2432nU/WC\n9O+MMe6n46kevdo4Nu2vL04+kFVERE+OJkoUdTrYyamcYTJd5vxJi85lOoyYNn/OxJCsw2v2\nZxa++jeakf9bPI9rGbwiet2Eft5HdyzbnSGcoZVl0KYnvsjw7KHT0ZFWLfotWz6Bz/oq1Kvn\n820zIs9k1Zw8b/GqqEUBvoa45eEZOsPoz78e42pd6/1PdnwRzm/xYMlwKLYiNRy0ILrxyZ9O\nnbt4dNee2E1ihX3TVu2Dw4Y1c1a89rlWrcPDevgSUc3AaR5fnbyZXkQuZnPqsXdou8ypm4sM\n/goRl/foqxTOY4iH9aZnjxakxf/wSD1l25xOTgoiqu/T+PrgYZv2P1g90JPMfOB/SVHmd9/c\nzl26Y7qPSkJEXg2a6P43JH7jjR6L3ij68869Rwv9nj3HnhZ3VqYdyi4e1bG6RFW7g53858Mp\ngYM8L55Jt6k9gSt/mM37JNwqUqyKmu6pEBNRw0bKgUOX8D2mCuPgOy2suy8R1Qic7vLlqcSs\nYnIS4OxalPPTzJk/lW2J/26fSsQR0dPqY0K6Ceo2xa+ez6v3HDCpa29/OxkR1XDt//mBRfeK\ndNWsZRKOOLFEIhHzXT5YLgFOPfyq7dt+hG97IirMSr50/tzB3Tvnj7/w6Zfrar3uGinX7rVL\nf7YVi8is7httXWNIDdG+L+7lfeBpeyv2tHOLCdIy58s9vXFFLPfo4lSSbjmRKshNteHUYxro\nSWY+8L9E/egiY2x2SFDZRivdIyLzCHZK5yBr8d5j17JbOO0gWY33HBRE1Lu1y/wjP1NIjQOZ\nRXVGNKDyh5l+Ilnh0MPz2SW0MptWLaylmaYfRuXw6Pn8ZWxjbmeLvrk/vQbWyK1rTRMXYwLl\nzudycd/AnlfOnf7mQXJqamrSjV/5rhTgOQS7CqPJPb1i3fGR4bNcZSIiUjp6tOkR5N+u4b9C\nZn95P29OfasXuzPdiwlGqjTnb3icdGQL5+htVz+IbLntUmaHNS9cEcYYvXTQXyTimEFv/Nm8\nB/5GSva1xErGia1274ot+7HPcWYzfE5sHeSsOnjw7h3FLdu6w423PanZr2XR4f2/pzo91Rl6\nNXWg8od5a+2hl1ZoKxEJJtgpVa/djy+/5QVGZSOoT5NXz+ez6uoWjZtw29rn3bbNfVo26h7Q\ncdrkSL5LBiiBc+wqjFjm9uu5c3Hn0so26guzicjVWmpcVD+b2ouyjxcZBDXNNwjtmHXj88f3\nv3zM1Q5xfyHF2jdqrC9+eCK72LjIDIXfJec7v+PBR5mm88d9rar+LhkKEtK10hKSuMi50T8/\n4bXMv8a/h1vevf27buZ4DSg5h1LlOsBObFj/zfcSZYM2NjIqf5guHTyKso/cLSoJ9Pqi38/m\nFvM2ElMR8Fte2F49n6sfbbmQrl23ct6w/gEd2rSo6SDMa2LATAnqOxa/xArP2b0bLlk1Vfkg\npFWjuiqJLjv1QULcV7aevULdrIijhirpyfV7On7QU5L3MD46hhPWbd6sXEM8JXsjVx5xbjVL\n8uLIVNUHd3NP2DAzivv3vzxU2lPfxtzS2S/pV7ucNZk/Tvqn+1pm4z+6udP2mYsUY4O9Pawv\nHdl6IDFzwSxnvsv9C6p3ekcbG3uT6JPGDsYWTqQa5GG98VCKo89sY0t5w6wmH99APnbenDUT\nhvVy4HISYtfbyM3mr5V/RzkvAzALr57PtZn1GTv93clrvZq4ZD24vmdrHBE9eJLzVj0XEUeF\nj5Ozs10dHGz5HgRYKAS7itRqTNT82ju+/eHQ6n1phTrOwaVG8y6h4UPfNwaduQvH/id698wJ\nezUG1rj7uNZPt/Bdb4XixCPedon4OWVQRP0/PjRhTZTNus2bl8/P04lrNngrfMX4xiohv/bK\n29e9P15dHLNu92dR2VqpR91m05ZF+FpJ+S31L1E49XGQfFlg9U7Z3ecXXJtWXq0T5FXaUs4w\nnSKjIzasjV2zZA4pqnUYMPODc6vi+BiFyQj8LS90r5jPJdWCFgxP2xwbdbBAXKe+7+DZ6+1W\nToybMcl/x9c+fd+O3bp2XHiH+C1T+R4BWCiOMRwdMCnGNDlqcrDBP5wRPuxrILwMAMC0EOwA\nAAAABAIXTwAAAAAIBIIdAAAAgEAg2AEAAAAIBIIdAAAAgEAg2AEAAAAIBIIdAAAAgEAg2AFA\nRfKxkrm3+f4NO+fen8tx3JBbWZVaEgCA5UCwAwAAABAIBDsAAAAAgUCwAwAAABAIBDsAi7Ck\nnoNE7l5gKPkXgg8P9eI4zrbmjNIOxwfX5zjui9QCIlLfPzEl5N1azvZyK0dvvy4LNyUYXlzb\nazuUYJqVIY1EYvn0HYnGhl/jP+nmX89GIXNyqx/y4Zo0zcvPS9y/PrDTW9XsrCQypZtXs7AZ\na7N0LHFDW47jopPVZToaujoord1G/qONAgAgPAwALMD16NZEtOR+rnHxYPeaRCQSqx5r9MaW\nIS5Wctu2jDF18rdeSqlUVWf4hPDF82f27+hJRM1Dt5Wu6tUdGqukbq0TGGPMoF0zxIcTST+M\nu2Z86PK6gUSkcPIbMXHWRx8MbWAldfCtR0SDb2YaOzw4OF7EcfbencIjFi5dOG9oDx8iqj/k\nYFH2jyKO85n8S2kNT+8uJaJ2GxMrcZMBAJghBDsAi5CfGktELZZeMi72cFBU79SaiKbcymKM\nafOvijmubuAPjLEFPk5SVaMzGYWlz/12WnMiWnwnx7j46g4lwc6gXRfWlOOkk7ZfNfbRFd52\nkYlV1ftcy9UYW9SPfmyokpYNdtt9qkkUte4X6UrXPNXDRunUhzE2pYaN0rFXafsPA704kfx8\nnqZitxIAgLnDoVgAi6ByGdbWTn7n84NEpMn75XB20bv/2WIjFv0Y8zsRZV3/RM9Y14/9dAXX\nF93I8h63vY2TovS5vT7+lIh2bvyNiF7bgYgY6T8b3XLi9qu1A3avDW1ibEy/MDtNo++xfb2P\njdTYYuXRJW68d9kig0/dSk25UUsuLlmPIb+YMaYvIKKxEc0KsxK2PMk3tk858MCpybIW1tJK\n2FQAAGYMwQ7AUszr5Jb7YEWWzpB1ZSXHiWc3aTC1hs39Xd8Q0Y1V50QS20U+TkVZ3+sZu7qy\nFVeG3L4jET29+pSIXtuBiNIvDJ0Qe7eVvfzhofFncjXGxrST94go5K1qZUvyGuFXdlFl71jw\n+8nVi+aMHjawe8e3azo5bUgpOa/Oc9AiEcdFf3qTiDIuz0gs0PZYM7ASNxYAgHmS8F0AAJiI\n37zOhn3bou7l9lxzQeU8yFsp6Tus7uJl0WnaJZt/SrH3inSVidQiGRE1nbF1eRf3l54ut2tO\nRPTaDkTMwC1NuDrSfqtLq/kDg2MeHp5IRCKJiIhE3AtPESkcyi7und61/+pjHn5d+nRu3btt\nz+mRvslju09MM66885Qa1p9t+YSW7T46dZ9EXmtte9cK2jAAAALC97FgADARXfFDa7Goafj/\nhrhYeQ04xhjLSYogokmXTog4rv3WW4wxbeFtMcc1Gnu67BO1BYnx8fE/P85/kw6NVVLXtw8a\n22N61yKiOaefMMaenBtIREFHHpZ9YmLMO/TsHLvi3LNijqv1/qayHbY2cFTYdy3pvKkdEcU9\nuu0sFdcJ2F+BWwYAQDAQ7AAsyGIve2W1fmKOG3j2MWPMoMtxlIrcujckon2ZJRdDLPJxkijr\nHX2cX/qs2BENOI6LTc1/kw7Pr4plTJN3vrZConTqkanV6wqTXGRia/egm2qt8dHinEsd7RWl\nwS7/yTYiah5xvnS1+SmnfaykCvsuz/ofF3Ocx/veRLTwdnblbCEAAPOGYAdgQa6va238U/2v\nz64nXeZlT0RKp96lffLu76wll0hVdQeM/DBq2cJh3RsTUdPhcW/YoWywY4wlbupDRC0jTjLG\nLq/tT0RKZ/+xU+fOnTqmuYOibs+RpcGO6Qu7OSnFMtcJC1Zs/XzD3Kmhrkr7tnVtRBL7T7/c\npdYbGGPhtWyJSGHfRV/pmwoAwCwh2AFYkPzUOCIy3kDE6PIyfyJqEHaibLecW4f+HdjR1d5a\npnL0bt5u/ubvtQb2hh1eCnbMoBntZSeS2O5LLWCM/fLVks5+ntZyiU21mv+asC5PfYPK3O5E\n/eBoWM+3PZysbF09O70/9MD1rPTz/6njoJJZOz8q1jHGbsa0IyLf2b9WwrYBABACjjFmuhP6\nAAD+gfNzmrf65Mq36QV9y9xsBQAASiHYAYB5MGgz2jh53HSY+PT+Sr5rAQCoonC7EwAwA+Mn\nTS+4/c3/8jSjvpnGdy0AAFUX/mIHAGbAx8Xmrs4ueOKa2MhgvmsBAKi6EOwAAAAABAL/UgwA\nAABAIBDsAAAAAAQCwQ4AAABAIBDsAAAAAAQCwQ4AAABAIBDsAAAAAAQCwQ4AAABAIBDsAAAA\nAAQCwQ4AAABAIP4fbc3Up1azF7EAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Visualization: average duration\n",
    "All_Trips_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "19d19a07",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-09-27T15:24:27.482914Z",
     "iopub.status.busy": "2022-09-27T15:24:27.481517Z",
     "iopub.status.idle": "2022-09-27T15:24:27.952610Z",
     "shell.execute_reply": "2022-09-27T15:24:27.951062Z"
    },
    "papermill": {
     "duration": 0.489815,
     "end_time": "2022-09-27T15:24:27.954384",
     "exception": false,
     "start_time": "2022-09-27T15:24:27.464569",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2AT9RvH8eeym3RT9t57K0OWMlSGgIqKAxEUVEBFmYIoiOJmioCI+6eioiiK\nA0RAAZWhoiCyBUGZpdCRNON+fwTKatNLyeJ8v/7Q5nuX7z2X3PhwK4qqqgIAAICLnyHaBQAA\nACA0CHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwe5cPz1Y\nX9Gg+6+HwlfDxmcuVRSlwye7g33j+ocbKYrSecX+wKNNqZqiKMridGcR69PmvrIJiqJsyfGE\nvOejf97q/xZSa04qcCSfs5bD4h/t2wxXyGs4X/jmN8ZpX5xU74mFLz1+w5UtypdKizNbklJL\nNG591ejJbx92+yJQZ5HpY30syH9tPd32RltFUdq+sS0C0wKiwhTtAmKOLa1CtWqnt7CqL2vH\nzn8UxVS1aqUzRyttNRbalerLWr3mF5O1QvNLyoe8TojIse2Pb8oeWdeez2Kcvn3Cn9nuyJeE\ngmTtW3Zt655Ldp8QEWtCsVJlSx478M8vq77+ZdXXL814/ct1n11WzBbtGhEWUVxP2QjjP4hg\nd64GYz/fNvb0S2f64rjUrgZz8W3bgv4Xnidna+vWrRMrjMv46/FQlliwSjdMfL3W0bK1UiIz\nuehSDCbV5xrx9d+Le1Y6f+iGRz8QEbNBcfv40bzo8+T8eVW9rquOOSte3n/WMw93blZNRMSX\n89vyTx4bOvjj377p0mzQge2vWpVoFxpS/6n1sSDRXU8jvxEGoo5TsbpSrMk1ffv27VgyLtqF\nREJS5VFGRflp7Ef5DFM9oxfvtSa27JBsjXhdyMcb13VadcxZ7uoJW76ZdzLViYghrn773h+s\n/aVdkjVj52sDCztledH5T62PBWE9BSKMYKcLqutgbF+lFA6WhBbDKySk/zlu23mXBx3f8/y6\nE7kVekwyygUdAlK92Tm53gvpITQi+v36spwhvtzKeXTRvV/9bbSUXvThw7bzNjlGa/kpD9QR\nkS+HLQntdKMm8utjDG8BIrCehmOhBS5eBLsL4Vvx9lPd2zYonhxvcSRVrnfZoMfm7nedzAHv\n1U6zxDcRkeN7JiqKUqzma/521ZvxzgvDOzSrUyzJYbLEFS9fo/Ot93+1JSOoCW+Z00pRlCE7\njmX+tbh3mzrxFvtbB7NF5JcJTc+5WNvnPjh33N2X1igfb7Wmlaly3YCxvx3LPb/Dv75/546e\nl5ctkWK1J1evf+mgCbO3Z5+1oTz6++f333x1tdLFrGZLUrFybbr1e+/Hf7WUqqq+L18c3aZO\npQSbJaVEuQ69Bn628Yh/0O6PuyiKUqn75+e85Y+XWimKUqv/8kI77ze2gc+bPXz5uUd6fnvy\nDRG5+bHGRZhT/7XVd/558JVR15WIT7JbTfEpJdpce89Ph50i3sUzhresXSHeak5Mq9j5jjHn\n76sCzK/2Ggr6fov2LRS6yJ2c5W3p694aW69ccnyc2WR1VG7Q5pE55yYtjYvTObbNm+hW1bId\nZjZymPMdod7IeQsXLpz3RG2NBfsF/jTW3FtHUZTr/zjrw1e9GYqiOIrfENTnU6iQr49S2EJS\n0BQL/VgKEmvraeCtq2hbaAvaCPud2LHkrmvbliyWaLY5KtVvNealrwqdEeDioCKgnKOfi4jR\nUvr8QdP6NBQRRVFKVqnftuUlKWajiCRV674py62q6i+THx85rJ+IWBNbjR49+vEX1qmq6vMc\nH9CshIgYTMkNL2nZ7rJLK6VY/f1/eig7r+dfn75ERNov3FVQVX/MvkxE7trwVaNES1zJGh27\nXPPJkRxVVX8e30RErl6+zz+ax7n7ptopeUXWKpskIrbUVn1LOkTk86M5/tHWTLndqCiKopSs\nVKdV84ZpDpOIOMq2/+bAyZIOrZ+cbDKISGqVuq3bta5TKUlEDMb46ZuPBvjohpSJF5EnBzQW\nEXN8yUaNazpMBhExmBInfv23qqrurE1xBsVsr53jPeuNA8vEi8jMfScK6vnIlltEpESjRc5j\n3xoUJa3BjHNG6JBsMzvqu3xq19Q4EVl2zKlxTlVV3fp6GxGp1bOmiFRu2KpHl/bl40wi4ijd\nY0b/RorBXK95h2s6too3GkSkZMuntM+v9hry/X6L9i1oWeT8s9zh+TsURXGUrtbhmh6tm1Ty\nbx+6TfstryuNi9P5ptdIFZEuS/cGqDOoglUNy+Tqe2qLyHWbD5/d+TERsaf1CmpyEV4fVQ0L\nSUFTLMJCEoPrqVrY1lXVttDmuxH2v7HeqHFlrcb4MtU7XtOjTZMKp974e0HzAlxECHaFKCjY\n7Vpwm4hYky79ZOPJPUfuia0PXV5aRCp2e+NkS+YGEUmsMC7vXfu+vUFEEir02nL05CbM5zkx\np18NEak//Ke80TTuSEpUjm//8DvZXl9e+zk7koW3VReRpKrXrtiV4W/Z+8M7te0nj5r4dyQZ\nO1+yGhRLfP2Xl273j+N1H541pIWIJFUb6N+SD6+YKCJ95q4+NR3vorHNRaREk1cCfHT+HYai\nGAe8+HWuT1VV1es6NHNwSxEx22vvcXpUVX22dqqIjP7z9F4n+9CHImIvfmOAnvN2GKqq3l82\nwWBK3O305A3N3P+SiFTu+YWqnrXD0DKn6qntvqKYR7291t+Sc3BNJZtJRIzm4rOW/eVvPLT+\nJbOiKIpx16lJa5lfjTXk+/0W7VvQssj5Z1lEWj30Zt7Oe+X07iISV+yavK60LE75urG4XUQm\n/nU8QJ1BFazl09AY7LRMLpLro6ptISloikVYSGJtPVW1bV01LrTnb4Tz3njZsLddpz65n+bd\ncs6CAVy8CHaFKCjY3VUmXkQeXPXvmY3u7D/KWI2KwfZLZq6a3zZl+1tDe/bs+fDSfWe+69jO\n4SJS4eoleS0adyT24jed/U/os3YknpydSSaDYrAtPuM4h6qqe77od+aO5LXWpUVk0PL9Z3Xk\nc/cp6RCR2f9kqqpaPc4sItty3HnDczN/Hj9+/KTnFxZUoXpqh1Gx+9tnN3uHVEkSkc4Ldqqq\nuuujq0Wk6o2n5339uEYi0uy5jQF6PnOH8fu0FiLSa+npQ2JrRzQQkQc3HVHP3mFomVP11Ha/\nTNs3zhzrgyYlRKTu/d+f2Xh7SYeIfHFqf6xlfjXWkO/3W7RvQcsi559le9p1ub4zRvI5U80G\no7WM/5XGxSlflyRYROSVf7MC1BlUwaqGT0NjsNMyuUiuj6q2haSgKRZhIYm19VTVtnXVstCq\nBQe7uGI9XGe90ZVkMpjiqgSYHeBiQbArRL7BzpOz06gopriqbt+5479zSUkR6fPLITW/bcr5\nnEf/emVovaIFu1p3rTqn/cwdydGt94pISrXnzhnH580qazWe2pF4K9tMRnOa87wZ+WFIXRFp\n9952VVVHVk0WkUqdB3++epPrvDEL4t9hjNiafk777k87iUiZNp+pqurO2mQzKJb4Jnmf5DXF\n4hTFtOKYK0DPZ+4w/F9QiaYv5w29Ps1uiquS6fWpZ+0wNM2pemq732L6pjPHWdazsoj03nRW\nSniyUtKZ+2MN86u1hny/36J9C+c7f5Hzz3Lte1afM2Yduzlvyde2OOWvZ1qciDyxR9MROy0F\nqxo+DY3BTsvkIrg+qhoXkoKmWISFJMbWU61bVy0LrVpwsKs18NyProrNZLIR7KAH3DxRFLkn\nfvCqqi2ls+m8e7mqty8pIn9tOlbQez3Zu9+YNrH/Lde1adaofMlkW2rFu6b+XrQyUpoGej5W\n5o7tIlL8shbntCsG+w1pdv/fXueuXU6P133YZjj3pzVavLhJRI5vPi4i4755s0P15N1fzOx6\nWd34xJLN23cfNmHKd1uOaimyZ0n7OS2pja4Qkex9W0TEZK8zoUZKbuaGp3cfF5HMfS8uOpKT\nXG1c2ySLls5FxJbS5c5SjsO/jtqf6xORnEPvLTicXbrN8w7DWd+NxjnNY7Dks2rYzYWvLwHm\nN9gazvl+i/wtaFzkkusnB+hEy+JUkGYJVhFZs/V4gHFemjF92rRpv2V7NBZ8IcvkOUK1Sl74\n+ihBLqjnT7HIH0uMrKcS5NY18EIbQLFLihXtjUDs4wHFRVPgszQVoyIivtz8Hz1wZMMrzdoN\n2pnpTqve9PIWzdp2u7lajTr1qixv1nxyEYowxQX6+hSzIiL5PkYg9VRAUVW3iJhslYYP7Z1v\nJ6WaFxeR+IrXLP3zwNqvF3y6eMnK71evXfnZT98umjJh5DWjP/xkUo/ARSrnFaAYLCKiGE4+\n3OuGJ5uNuv7Ltyf+8sirbX+ZMFNE2rzQN3Cf57h/aO15o9cN/+HAO21Lb33leRHp/FTrc8bR\nOKcXLsD8BlvDOd9v0b4F7Yucf9EtcL40LE4FueqWSmOe/GXjc2ukQ698R3CmLx58/wOKomy9\ne4jGgou4TKrnrpghXCUvfH2UIBfU86dY5FU1RtZTEQlq6xp4oQ0g33+5AToR7UOGsa6AU7Hb\njYpiiqvmOW/891uWEpEb1x5Q8zsLcFNJh4g8+M7aM9+SsWusFOlUbJvXt57Tfuapn/TtD4pI\nSo0p57+9bZJV/Kd+fLnFzUajpURQZ/Y82Qe+evPJ4majoij/O5hd0Gj+Uzyjtx87p33PV11F\npFKPb/wv/Wd5rEltvL7cZgkWo7nYHuf5n+tZzjzFo566jrtUi9dVVb2zlMNoKX3k1Fmc06d4\nNM+p/0zNZbP/OLPRfyq2/9azbi3M91RsoPnVXENB3++ZNH4LWha5fGdZPfuslqbFqQCZ+19R\nFMVoTvvxeP5n7v6Y005EHCVv11jw+c7/NPI9Fes6/qOcfSpWy+Qitz6qqsaFRMsSompbSGJr\nPdW8ddWy0KoFn4o9/6PjVCx0g3+1FIXRVvX2knZPzvZRPxw4s92Ts/WhDYcVg2VYzXxOyqje\njPcPZpusFSbffMmZ7ce3bg5HkQnlHkw1G47tGLPkyFk/Ln70t0kr835sWzGPqpnszT049seD\nZ7/bN6Rh1dKlS39yxJl98O3q1as3aPFQ3jBjXIkr+4yZXj1FVdUlhf1y+fyRX57T89T7VonI\n5SPq+F/7z/K4Mr6b8O2In07klmo1vbyG3+E9U1za9beUsB/aMHLvwS/m/ZtV4tLnUs8/i6Nh\nToOaaEECze8F1FC0byGEi5ymxakAjtJ3PtushNd9uEeXR457zz0e48nZ0nf4GhG5ZOwojQVr\n/zSyDpxV7b6vz/o1+kiuklo/wIgvJH6xsp4WdesK4LTo5srYV9BdsTvn9xYRa3LzzzefvOjY\nnbljePsyIlKhy6v+Fv8/FhPKPnDqTd4qcSZFUeb9fvrAz08fvFDTbhaRsu2+yGsMyRECVVUX\n3V5DRJJr3LB678nbLY9uXty62MlzK/4jBAfXjhURS3yDd388eReez3P8zWGXi0hKjftVVfXm\nHkgzGxXFOG7h6UeaHfp9UY04s6KYznz01DnyHqMw+OXl/nv3vO6jcx5oLSJxxa/OPOMZDTsX\nXC0i5kSziNz/y6GCOsxzzpEAVVU3PNpYRJr3qyoit35/+nbCM48EFDqnfhd4xC7w/Gqs4fzv\nt6jfgqZFTuPBDy2LU0Fcx9bUd5hFpGTzmz78btOpgzGeX79558oqiSLiKHX1YbdXY8FaPo3N\nM1uKSHKNu/7NPXnn6NFNH9d1mOWsI3aaJhfJ9VHVtpDkO8WiLSSxtp6q2rauQR2xO2MjzBE7\n6B/BrhAFP6DYN/nW+v4NYrmaTdpeWifeZBCRpGo9/sg++awBr/uw1aAoivmq63vfOWSpqqqr\nH20nIgajo/WV19zY8+qGNUoajPE3jxrtn8Qd9w72P5IqVDsSj3P3jbWS/UWWrdG4YbVSiqJY\nk5tNu6P6mTuSj0d28u9aKjVo1uGKVlXTbCJiTWq8+NTzKdZMuNI/QolqDdt37HBpg2oGRRGR\njqO/CvDRDSkTb7JWuKxEnIhYk8teemm9JItRREy2Sm9sPusWPHfW7zaDIiKW+EbnPAQ1X+fv\nMLIOvOGv0GBK2e863cU5O4xC51S9sGCnZX611JDv91u0b0HLIqdxH6lxcSpI+uYFLUqcDDGW\nxLQq1Sqnxp+89D6hYoev9mdpL1jLp+HKWOV/+qAtrU6Xa2+4olm9OINiiW9Q32E+81SslslF\neH1UNSwkBU2xCAtJDK6nWrauGhfa8zfCBDvoHsGuEAF+eUJVvd+88UTXVvVSE+JMtoQKtVvc\n8+icfa6zNngrnh5QsUSSwWSp0e59/1s+mzaqZd0KcRZjfEqJy7retnDjEVVVX+zbLslmchQr\nf9wTymCnqqrX9c+sMQOaVi/rsJiSipft3GfYz0edPw6td86O5OdPZ97QqVnxlHiT2VaySoNb\nHnhy09kPMlj1v2e7t2lSPMlhNJgSUstcdmXvmQt/DvzRDSkTb01s5c7c/vxDtzeoVCrObE4p\nWbHb7cNWnTpccaana6WKSM07VwTu0+/8HYaqqj2KxYlIiSZzzmw8/4n2hc7phQQ7jfNbaA0F\nfb9F+Ba0LHIa95Gq5sWpwFJc/771zIgurRuWLJZkNpoTU4o3atNl1JR3D+SeudZoWke0fBrp\nmxf163ZZicSTaTK+fJt3N6X3SrOf/biTwicX+fVRLWwhCXCNXbALSWyup4VuXbUvtOdshAl2\n0D1FVQu8BQmImIcqJU356/isfZn3lHFEuxbojSfryK592VVqlA/uojCch/UUiH0EO0Rf9sH3\nHCVvthfvnXXw3WjXAiB/rKfARYHn2CGaso47reYTz/QcKiKXPvZotMsBkA/WU+AiwhE7RNN9\nZRNe3J8pInHF2+z4e3lpnhoKxB7WU+AiwvqJaLrkqtZ1azfscsuwpZu+Zm8BxCbWU+AiwhE7\nAAAAneDfXgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAA\nQCf4rdhzHT9+PLQPbbbb7Yqi5Obmut3uEHZbNDabzWg0ejwel8sV7VrEarWaTCav1+t0OqNd\ni5jNZovFoqpqdnZ2tGsRk8lktVpFJCsrK9q1iNFotNlsIpKTk+Pz+aJbjKIodrtdRJxOp9fr\njW4xIuJwOETE5XJ5PJ5o1yJxcXEGg8Htdufm5ka7ltja1FgsFrPZ7PP5cnJyol1LeDc1SUlJ\nIe8TFx2C3bncbndog53RaDQYDDES7Ox2u8lk8ng8sVCMP9ipqhoLxZjNZn/KjIViDAaDyWQS\nkVgoRkT8xXg8nqhnqbxPJka+KaPRqCiK0+mMhWLi4+ONRmOMbGri4uJiZ4Xyb2piZLtnMplM\nJpPP54uFYqBLnIoFAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAn\nCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYA\nAAA6QbADAADQCYIdAACAThDsAAAAdEJRVTXaNcQWr9cb2g6NRqOI+Hy+WPioDQaDoiiqqvp8\nvmjXElvFKIpiMBgkDAsAxYRWTK1QMVhMjKxQMbV2x1Qx4Vuh0tPT09LSQtsnLkamaBcQc7Kz\ns0PbocPhMBgMbrc7Nzc3tD0Xgd1uNxqNHo/H6XRGuxax2Wxms9nn84X8My8Ci8VitVpjpBiz\n2Wyz2SQMS2MRGI1Gu90uIk6nM+r7RUVR4uPj/cXEQtBMSEgQkdzcXLfbHe1aTm9qXC5XtGuR\nuLg4k8nEpuZ8/k2NqqqxUAx0iWB3rtzc3ND+49vhcIiI1+uNha2tzWYzGo0xUozZbPZvbWOh\nmLyjHbFQjIj4g10sFGM2m/1/5ObmRj1L+Q91iIjb7Y6FLBUfH68oisfjiYVvyp+/Y6QYq9Uq\nIjGydvs3NTGydhsMBn+wi4VioEtcYwcAAKATBDsAAACdINgBAADoBMEOAABAJwh2AAAAOkGw\nAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKAT/PIEgBiS8NzjgUc4+bT+MRPDXwsAXHw4YgcAAKAT\nBDsAAACdINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsA\nAACdINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACd\nINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgB\nAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADo\nBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADoBMEO\nAABAJ0zRLgAAYlTCc48HHiHX/79xk8JfCwBowhE7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpB\nsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADoRhWDn\nOp6R41MjP10AAAB9M0V4es70Hwf0f6r1rP/dXcohIiK+5e+9tGjlhr0njLXrNb/j/n6V44yn\nxi1oULDtgQcBAADoRESP2Kk+5+xRUzK8vryWnQsemTJ/TcvrBjw29Hb7jqVjH5qrFjYo2PbA\ngwAAAHQjosHu1zfGrk+8/PRrNXfy/D+q9XmiV8eWdZu2GfrM4Mx9i9/9JyvQoGDbA08FAABA\nRyIX7I5v//iJL3LGPXZ9XosrY+Uep7dz+zL+l9aUNg3jLWtXHAgwKNj2wFMBAADQkwhdY+fL\n/XfSuLevHjWnuv30xW25WRtFpI79dA117aavf88IMCi3TXDtgafit3jx4pUrV+a9HDdunMkU\nyo9FURQRsVgsRmP0L+zz12A2mxMSEqJdi/g/Z6PRGAvF+D8Zg8EQO8WISCwUYzCc/Oefw+FQ\n1Vi5isFut/t8vsLHiwibzWY2m6Ndxclvymq1xsKmxr92x9SmJqbWbkVRQl7MiRMnQtshLlIR\nCnZfPvfI0SaD72qapnrT8xp9riwRSTOf3galmY3u4+4Ag4JtDzwVv+3bty9dujTv5YQJE6xW\nawjm+Wwmkym0efFCGI3GWNj0+xkMhnB84EWjKErsFCMiMVWMxWKJwFRc2kaLTJDSWAxrd0Fi\nau2OqWLCsakh2MEvEhujgz/MfHVzqdmvX35Ou8FqF5Gjbl8py8lDAofdXlOKKcCgYNsDT8Wv\nWrVqHTt2zHvp8XhCOO8iYrFYFEXxeDxerze0PReB2Ww2GAxerzfks1kEJpPJaDT6fD632134\n2GFmNBpNJpOqqrm5udGu5WQxIuJyaYwWYWQwGPwpKjc3N3aO2Lnd7tg5Yhcja7d/UxMja7d/\nUxMjazebGvynRCLYHfpuY+6Jf/pf3zOv5fOBNy9xNHz7pTYiK7bkuEtZTv7DZWuOJ6lukoiY\n7fXzHRRse4Cu8orp0qVLly5d8l4eOXIktHuv1NRURVFyc3Ozs7ND2G3RJCUlGQwGt9udmZkZ\n7VokPj7eaDR6vd5Y+Iem3W43mUw+ny8WirFarf7TNLFQjNlsTkpKEpGsrKwIxBeNZ6eys7Mj\nsJPWWIzT6XQ6neEtRYOUlBSj0ehyuWJhU5OYmGixWNxudywsw/5NTYys3XFxcf5gFwvFQJci\ncfNE1dvHTD7lhefHi0irsU8+O+leW/IVZS3GxasP+UdzZ25YdyK3yRWlRKSgQcG2B+gqAjMO\nAAAQSZE4YmcrWbFayZN/+6+xS65YpUoph4gM61VrxLzxy0qOrJXs+mTGZEfZTn3KOEREFHNB\ng4JtD9AVAACAnkT5gt9qNz0xyDX1ncnjjjiVqg3bTRw2QClsULDtgQcBAADohhI7V0PHiHBc\nY2cwGLKzs2PhwpekpCSz2ex0OmPkGjubzeZ2uzMyMgofO8zsdrvdbvd6venp6YWPHWZ519gd\nPnw42rWcvsYuPT09EtfYPfe4ltGcYyZG4ho7bcW4x02KnWvsYmRT47/GzuVyxcKVZP5Njcfj\nOXbsWLRrkbi4OIfD4fP5jh49GvLO09LSQt4nLjoR/eUJAAAAhA/BDgAAQCcIdgAAADpBsAMA\nANAJgh0AAIBOxMrvGwIALpCyfJWW0Q7VqxnuSgBEC8EOAIrO1vkmWfdr4HEIUgAihlOxAAAA\nOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADoBMEOAABAJwh2AAAAOkGw\nAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADoBMEOAABAJ0zRLgAAgmPrfJP8\n/HvgcQ7VqxmZYgAgpnDEDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0gmAHAACgEwQ7\nAAAAnSDYAQAA6AQPKAYAhJ6yfJWW0XiUNBBaHLEDAADQCYIdAACAThDsAAAAdIJgBwAAoBPc\nPAH81yU893jgEVwi1memR6YYAMCF4IgdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgE\nwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIKfFAOAi0Chv/zmEZHON0WkFgCxiyN2\nAAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACd4HEnAAph63yTLF9V6GiH6tWM\nQDEAgAA4YgcAAKATBDsAAACdINgBAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAA\nAHSCYAcAAKATBDsAAACdINgBAADoBMEOAABAJ0zRLiDmmM1mVVVD3q3BYDCbzSHvNliKosRO\nMQaDQUQURaGYcxiNRv8fsVCMdjFVLcUEEIF6/CuUFhErJqbW7nAU43a7Q9shLlIEu3M5HI7Q\ndujfplgslljYpviLMZvNedEh6sUYjcb4+Pho13I68sZOMSISmWI8IeonJKUx1tkAACAASURB\nVNVSTEFCVYxEZLnSHuwiVkxMrd2KooS8mPT09NB2iIsUwe5cx44dC+0Ru9TUVIPB4HQ6s7Oz\nQ9ht0SQlJZnNZpfLlZmZGe1aJD4+3mazeTyejIyMaNcidrvdbrd7vd5Y2DhardaEhASJ1JY6\nIUT9hKRaiilIqIqRiCxXiYmJGseMQDH+TY3X6z127Fi4p1WouLg4h8Ph8/liYVMDXeIaOwAA\nAJ0g2AEAAOgEwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g\n2AEAAOgEwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEA\nAOgEwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgE\nwQ4AAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4A\nAEAnCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAn\nCHYAAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYA\nAAA6QbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYAAAA6\nQbADAADQCYIdAACAThDsAAAAdIJgBwAAoBMEOwAAAJ0g2AEAAOgEwQ4AAEAnCHYAAAA6QbAD\nAADQCVNkJpN7fOvc6a+s+W1nls9UsUaTm+4e1LJCvIiI+Ja/99KilRv2njDWrtf8jvv7VY4z\nnnpTQYOCbQ88CAAAQCcic8ROfemhR9ccLj34kSefHT+yjvGPZ4ePPuzxicjOBY9Mmb+m5XUD\nHht6u33H0rEPzVVPvaegQcG2Bx4EAACgG5EIdq6Mb5cdzB4wYVDL+jWr123Sf/QIr3PP/IPZ\nouZOnv9HtT5P9OrYsm7TNkOfGZy5b/G7/2SJSIGDgm0P0BUAAIC+RCLYGUxp/fv3b55oOfla\nMYmI3WhwZazc4/R2bl/G32xNadMw3rJ2xQERKWhQsO0Busorz+VyHT+DEmp5Ewp5z0UQO5X4\nxU49sVOJXyTrCdWaTjEXRTGhqidUBUeykghMS4swFRPCJQQXtUhcY2d2NOjZs4GIpP/y488H\nDq77an7xutf0KWHP2b9RROrYT9dQ1276+vcMEcnNyn9Qbpvg2gN0lfdyzpw5b775Zt7LVatW\nWa3WkM38KXa73W63h7zborFareGYx6Ixm83FihWLdhUnGQyG2ClGRCJTjCtE/YSkWoopSKiK\nkUgtVxpFrBiTyRQ7Mx6OTc3hw4dD2yEuUhG6ecLvwMoln23bt+fvnNbXV1FEfK4sEUkzn76P\nIc1sdB93S8GDgm0P0FW4ZhIAACBKIhrsat3/yGSRzL0/3Hv/0xPL1hlWwy4iR92+UpaTZ4QP\nu72mFJOIGKz5Dwq2PUBXeVX17NmzRYsWeS9zcnKcTmcI5zohIcFgMDidTpcrhP/kLiKHw2Ey\nmXJzc3NycqJdi8TFxVksFo/Hk5UV/UserVarzWbz+XwnTpyIdi1iNpv9x3czMjIKHfnC2ULU\nT0iqpZiChKoYichy5XA4NI4ZgWL8mxqv15uZmRnuaRXKv6lRVfX48ePRrgX6FIlgd3z7d9/t\nsHa9qpn/ZXz5Ft2K2b5c+o+5UX2RFVty3KUsJ08Lbs3xJNVNEhGzPf9BwbYH6CqvvAoVKlSo\nUCHv5ZEjR1Q19HfN+nw+tzv6hwn9sxYjxfhPB6uqGgvFmM3m2CnGYDj5j5DIFBOqxBCSaimm\nICEMdhFYrnw+n8YxI1BMTG1qTCZT7BQDXYrEzRPunBUvz55y2H1qPVc9m7I99goOW/IVZS3G\nxasPnRwtc8O6E7lNriglIgUNCrY9QFcRmHEAAIBIikSwS6k1sLLZNfqpeRt+37p986/vTR+5\nMSfutt6VRDEP61Vr27zxyzZs3b/zt1fGTXaU7dSnjENEChwUbHuArgAAAPQlEqdiDeYST74w\neubL7zz/+Jc5qrli9cZDn3msZZJVRKrd9MQg19R3Jo874lSqNmw3cdiAvDu2CxoUbHvgQQAA\nALoRoZsnHOWbjZzYLJ8BirFT32Gd+ub3noIGBdseeBAAAIBeROYnxQAAABB2BDsAAACdINgB\nAADoBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADo\nBMEOAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADoBMEO\nAABAJwh2AAAAOkGwAwAA0AmCHQAAgE4Q7AAAAHSCYAcAAKATBDsAAACdINgBAADoBMEOAABA\nJwh2AAAAOkGwAwAA0AmCHQAAgE6Yol0AgHwoy1dpGe1QvZrhrgQAcBHhiB0AAIBOEOwAAAB0\ngmAHAACgEwQ7AAAAnSDYAQAA6ATBDgAAQCcIdgAAADpBsAMAANAJgh0AAIBOEOwAAAB0Iqhg\n5/tn5zb/X86Dax8bMfj+sU8v2XkiHGUBAAAgWFp/KzY3Y80tbbp9uqNUbtYm1ZPeo067r4/k\niMisyXNe//O3WyvEh7NIAAAAFE7rEbv3et7w8ebcvg/dJyIH1w/9+kjO4MVb03d918S8f/hN\n74ezQgAAAGiiNdhN+ulgxe7z5068R0Q2PrHSmtRmWufqyZVaT7ut2pHfJoezQgAAAGiiNdjt\ncXnSWpb3//3GT4eKNXjIKCIijioOT86O8NQGAACAIGgNdq0Srfs+/0VEXMeWvHsou8nDTfzt\n6z7522yvFa7qAAAAoJnWmycm3FGj9dR+19y13vTjW4opdVLb0h7n9rkvvPDAqn9Ltn8hrCUC\nAABAC63BrsWzy8bvu3rSa9PdSly/yd/Xd5gz930y6JHZ8eXavP3BdWEtEQAAAFpoDXYGU7FH\n568dk304y5iaZDWIiC2l88IvWl7eqWWSUQlnhQAAANBEa7A7ObY9Len033V6XB3yegAAAFBE\nwQW7P7+Z/+5Xa/YcPNr2mdm9zat/3N+gXb0SYaoMAAAAQdEe7NSX+rUe/Ppq/wv7uOldM6df\n0fiztnfNWDpnsImTsQAAANGm9XEnO/533eDXV3cYPPXXbfv8LSnVn500sOWKuUO6z94StvIA\nAACgldZg98SwJam1Ry998YEG1cr4W0z2WqNnr5pQv9iK8RPDVh4AAAC00hrsPjycU/WOW85v\nv/b2Ks4ji0JaEgAAAIpC6zV2FazGE9uOn9+evinDaC0T0pIAADEt4bnHA4+gikjnmyJSC4Cz\naA12Y5qXuOPt2394alOLNFteY/b+Zf3m70xr8nJ4agN0q9D9IjtFAEARaD0Ve938lysoe9pV\nbnT38MdFZNN7r04ccUed6lft8ZWe8cGN4awQAAAAmmgNdnHFu/z866fXX2p4ZfJ4EVn+yLDH\nXng7ocUNH/+88frSjjAWCAAAAG2CeEBxYvXO7yzrPO/Qrk079nuMceWq1y2XbA1fZQAAAAhK\noGD3ySefBBh6YP/e9af+7tGjR+hKAgAAQFEECnY9e/bU2IuqqqEoBgAAAEUXKNgtX74872+f\n++C4W+9Ym1Om/30D27eol2x0btu0ZvazM/4p32v54slhLxMAgKJSlq/SMtqhejXDXQkQboGC\nXbt27fL+/vaeemuzq6/868fmqSevq+vU5dqBg/tdXrpxr7F9/ph3ZXjLBAAAQGG03hU78p1t\nVW+blZfq/Ez22lPuqrFj/vAwFAYAAIDgaA1223M8Bkt+IxvE6/o7lBUBAACgSLQ+7uTG4vY3\n3hy1+9lvKlmNeY1e154x87bZS/QLT23RkZiYGNoOFUUREavVajabQ9tzEZhMJhGxWCxJSUnR\nrkWMRqOImEymWCjGYDD4/xuZYnwh6ick1VJMQXRZjISinpgqplD+TY0WESgmfJuajIyM0HaI\ni5TWYDd29i0v93i5Yb3OEx69t0W9WknK8a2bfnxpwqNL050DXh8d1hIjzO12h/YmX3+W8nq9\nbrc7hN0WjcFgMBqNPp8vNzc32rWI1Wo1GAwxUozZbPZv/SNTTBAPkAwoJNVSTEF0WYyEop6Y\nKqZQFotF45gRKMa/qVFVNRa2e9Alratnhe5zlk013ThyzoO3L8lrNFqKD5r6zczuFcJTW3Tk\n5OSENtjFxcUpiuLxeHJyckLYbdFYLBaj0RgjxRiNRpPJ5PP5YqEYRVEsFkvEikkIUT8hqZZi\nCqLLYiQU9cRUMYXSfsQuMqu/xWJRVTUWtnvQpSD+3XXFAzP39x/x1WdLft+x322wla1Wv2OX\nKyvEh/BfbgAAACi64GKZOaFSt5sHdAtTLQAAACIiYjcayt64fNu7baNdSJRNqZoy9lir7COf\naRw/ULBr3LixYrBuWP+D/+8AY/7888/aSwQAAEA4BAp28fHxiuHkg+uSk5MjUg8AAACKKFCw\n++677/L+/vbbb8NfDAAAiD1qrstrtpqU2O0wIJ/nmGpK1noTzUVO4wOKfS6Xyx3KW0UBAEBM\ne692WlLFR9e+/FC5pPg4izG5RJXbxrzpE1n3+qjGlUrGWeMr12k+/t3NZ74l86+VQ3tfVaF4\nstWRWqtx+wlzFvsurMONHz7Vrn5Fh8WaVrbWzQ+8sC/Xq3Fyr9UsllJ1iuvYT7ddXifemprp\n1RRi/ln1vxs7XVIswWZPKt6i860frD2UN+iPT2f2vLxJWpLDZIkrXbVB35HTj3pO9+lzH545\nun+DqqVsZnNisfIdbrr/h8NO/6CR5RMTy488cyq/TGiqKMpul1dj50HRdPOE6j2RbE9p/s62\n5TdVLdpkAADARSf74P9aD0m/dei45uWtn7701P+e6vvnznmbvsl+6KFHbvfumvbkjMf7XNKx\n67HWiRYRydq/sFHtG/coZW/tN6BamvHX5R+Mv6frwtWv/fzGHUXr8NCGR5u8v7rjDX2H9Uj4\ndcWH700fvnTltj3rZ8cZRMvkfJ6jfRtdfaRNn0nT748zFH508N/vn6h++WNq2qW33z2qhPHo\nR/Ne6d3qy+N/7rqzcuLezwfX6zkrsWa7u+4blWrxbF710ZvPPbBmf9Wtb3f1v3dql0bDv/n3\nipsG3nBX+eN71s2eO7Pjd3vS9y00azgoWWjnQdEU7BRj0rDaqW++ulYIdgAA/Gd4nDuHf7Pv\nufZlRKTvrXXjinX7eeH2Ff/ubJVsFZHuVX+tdsuyGX+faF2nmIg8f+Vde5RqK/ZsaFnMJiIi\nTy8c1vjayf2efOzasVWSitBhxtYVwz768/lra4iIqM++Nqhx/9lzbvvs4QXdK2qZ3Im9Tx6b\nvm7JkCaaZlXN7dP9SV/ylRt2fFrLYRaRh0f1Kluq/SO3LL5zTe9vR71vsJb/9ZelFU7+/tbj\nxcslzv5yjkhXEfHkbB3xzf7yV3/4zbvX+Tu7LqFV99dWfXQ456bicYVOOXDnwdL6W7Hjvlvc\nYO99g6d/csTlLXxsAABw8TPba/lDmIjYUrsmGA1p9ab6Q5iIFL+sjYjkuH0i4sneNHHz0Vr3\nvnEqZomIdHl0mojMn7W1CB2KSHzpgSdTnYgopj5TPrYbDd89ulzr5BTrm3c30jinJ/ZNWZru\nbPrsNH+qExFbaruFs14cd2eaiPT6/s8D+zefCl6i+rJcqqp6s09OxxBnUeTYHx+t23vC39Ly\n2VWHDh3SkuoK7TxYWp9j1+3Gsb6SFWYNvXbWg7aSpYvbzGclwl27dhVt8gAAIGYZTMXOfGlS\nxFo8Je+lYjj9G+jOo194VfW3F5opL5zbScZvp3/HVnuHIpJSv9dZI9uqdU21LT7wnUhfLZOz\nxDcqYdZ6AOv4tm9FpFX7kmc2trnz3jYiImJPTj269ss3vly5aeuOv/bs/mPjr/uOuWynnhdi\ntJb/6qk+3ca83aziuxXrNb+sRYu27a+6odeVqdruDgncebC0BjubzSZSpmvXMkWcDgAA0DGD\nRUTqj3w174BcHmuS1sNm5zg/FpkUOfkgNg2TUwwO7dPyuXwiYlHyj2ILhnW4Ycq3ZRu3v+aK\nFt1aXT3s8Yb7BnYacvD0CG1HvnHwjocXLvxs+crvVy15/Z25Ux56sMXC37/tdMYBxTyq76wb\nIwrtPChag92iRYsKHaddreortmwrYiEAAOCiZUvtYlSGeo7VvOqqy/IaPTlbFnz6a6mG9qL1\nefT3hSKd8l56XbsXHXEmtuwQjskl1mgismTVT4elYmJe47JR9751JGXOlO43Tfm2fJfZf302\nMG/Qa2e8153554ZNx4o1bNp74PDeA4eLyB9fTKzT5dEHHvl586yW/trPnNaBdUfz/s498UPg\nzoOl9RClFn//tTuEvQEAgIuFyVZtfJ3UbW/1/ebf0xeHvTu4x80337ynqFkjc/9LYz7feeqV\n953hPTK9vh7PtgrH5BIrPtww3vLj/cN3OU+GsNyMNbdPm/vZTyU82Vu8qpraqGneyNn/rH5h\n3wmRkwfesg7MatGixY1Pn/4VrkqXXCoiniyPiNiNBufRzw+funDQeeSHQcv25Y1ZaOfBCu63\nYgEAAPI1dPFLc2vc2rlqvWt7d29aPfX3ZfPfWrK1/h1v9SlRxCN21uK2p7vX+f3W/pdWTfj5\n2/c/XrG7/FUTZ7YsGY7JKcakT94eVP3aafWrtet321WlzMc+njv7H69j5od32IvbOhYb9O1z\n3YaYhzctZ9+56YdXZn9atZQtd++G6f/74M6beyVVmtCx+MvfTGzbZWe/FnWr+I7tXvjKq0Zz\nsfGTGotI9z41JjyxtmH720fe1t7975bXJ087kGaRvz3+6dqL9w7cebAzEsojdgAA4D8rvsKN\nGzd+1v/KCis/mjdu4rS1h1Ifm/vFhldvK3KHzaeunjvu9r3ffzzpianf70ro/8jc3z8fm3cR\nXMgnV7HHlD8Wz+pQJePNGRMnTnlNrXvNGyv/vKdGshhsC39edFv7igtnPDb0kee/3+qbu27n\nwg/GVUjIHXHP4GMen2JM+vS3pUNuaL3pi/9NHDN68txPklvf8uFPf95SLl5EGk9Y/uJDNyfs\n/WbEvXeNGP/csfq9v36/3empFtZ5sHOhqGrIflCiapx5R447VL1Fy5EjR0L4mYhIamqqwWDI\nzs7Ozi7ircshlJSUZDabnU5nZmZmtGuR+Ph4m83mdrszMjIKHzvM7Ha73W73er3p6ekRmFzC\nc48HHsHW+SYt/RyqV/O/Voxoq4diArjwemKqmELFx8fH/bA+RoqJi4tzOBw+n+/o0aOFjx2k\ntLS0kPeJEPK5jv99yFOhXGpYp8KpWAAAgLAzWBMrlAv7VAh2AABAz3Z/3K1x/1UBRrAmtft3\n98KI1RNWBDsAAKBnla79LP3aaBcRKdw8AQAAoBMEOwAAAJ0g2AEAAOhEoGDXvmG9O7/7x/93\n7dq1H99zInBf46dOD1ldAAAACFKgmyf2b9+6bdLc7x+9ymyQLVu2bFz744//JOQ7ZvPmzUWk\nz933hqVGAAAAaBAo2M0a0rr9s4+1+fIx/8sFvTotKGDM0D7RFwAAAEUQKNhd8cyynTesXL/z\nX6+q9u7d+8ppr/YvWcSfewMAAEC4FfIcu8qXtK18iYjIhx9+eNWNN95UyhGJogAAQFSdOFHI\nhfVFlpCQ/2VdCAmtDyj+4IMPwloHAACIKZYnxoa8z9xHngx5nzhTcL88kb3vlw8/WbJ55/5s\nr6l0lbpX9uzVtHx8mCoDAABAUIIIdgse7X3rk++7fKfvkxg79J4bxv5v/uPXh6EwAAAABEfr\nA4p3fXBrr4nzS7TrP3/Jj/sOHkk/tH/tsg/vvLzk+xN79flodzgrBAAAgCZaj9g9P/TT+LJ3\nbFk6125Q/C2XXHF903adfRVLvX/fC3LdjLBVCAAAAE20HrF771B2jYEP5KU6P8Vgf2BIzZxD\n74ahMAAAAARHa7CLNxicB5zntzsPOBUj908AAABEn9ZgN7R60vY3B61Ld53ZmJuxYcgrW5Oq\nPRCGwgAAABAcrdfY9fvw8cfq3teqUsP+Q/q1alDNJjk7flv9+ouvbs22TP+gX1hLBAAAgBZa\ng11yzUGbl5huGzRm9qTRs081ptZsO3PmW/fUSg5TcQAAABGQajZeu/nwvOop0S7kQgXxHLty\nVwxc/seAv7es37Rjv0usZarUaVK7/JmnctvVqr5iy7aQlwgAAAAtgvvlCRGlXK1LytXKf9jf\nf+2+0HIAAABQVFpvngAAAAgrd+amkbd0rlE22Z5cskPv4b9luv3tOQe+v/fatqWS401We+V6\nbZ5esNXfvvvL2V0vrZPqsKaVrdLjnqePe1UREdWlKMqTe0/kdZtqNt65LT1AP3pCsAMAADFA\nzR3QuNWrf6Q889rn33w0u8Sv8y5v/rB/yIjLui3YX2fep9+s+37JAx29Y3s3/zvXm3v8uwbd\nBsvVDy5e+cP7Lw5f//ojXWZsDjyFfPsJ/4xFVLCnYgEAAELv6B8j3tyZu/zo622TLCLS4JvD\n3W59559cX2mLoco9Y+bdcV/X4nEiUqvqmAenXbMxy90648sTXt/dg25tUdouTRsvXVB6m71Y\n4Enk2085izECcxcxBDsAABB9f3+62pZypT/ViYijzIBvvx3g//vBh+5e9smHz276c/fuXT9/\n95m/Mb7cg7dd+tp1lSq363xl61atOnXueU29UoEnkW8/OsOpWAAAEH0+l08x2M5v97r2dq1W\nvvfE9zKMaW263Tbjw3f87QZT2ls//f3bste6X1ruj2VvdmpUrvPoJfl2nKsG6kdnOGIHAACi\nr2y3Bs6JC9Zlui+JN4tI9oG3qjYa+drm3ZfsGfblHtc/WxeVNBtEJPvg//zjH1g1+amPc6c+\nP7p2qy4PiGyefVnjESPl6Z/9Q4+6ff4/sv55J8vrE5H0Lfn3ozMcsQMAANGX1mjGNSV9XTsO\n/Ozbnzas+mLQlQ8647tfnWK1FrtU9eW+MH/FX3/vWv3lG73bjxKR33ccMJU4Me2Fh29/4vUf\nfv7tx+ULn5r5Z1LNG0REFGuLROv8u5/esPWv39Z80a/j/QZFEZGC+tHZ3RMcsQMAANGnGOPn\n/7Zs+IAxD9zS6ZA3qWnHu5bPelxEEsqN+PLZ3fc/fOOM46aGzTpO+GhTiVvrjW1Vv2v60S9e\nODzqxVFtxx9NKlm+afu7ls8a4e/qk6+m977rqdZ1ns3x+lrf+VKPg8MC91PXrp84pJ85AQAA\nFzVrarMZC5bOOK/9qhEz/xwx8/TLtXtfERGRug/NuPqh80eXEi0GLvt9oOrLOZAupYrFySv3\nBu5HRI66dXLkTuOpWJ/L5XKrhYw0fur0C64HAAAgBBRDXKlicdGuItI0BTvVeyLZHtfp/R2B\nR+tz972hKAkAAABFoSnYKcakYbVTd766NtzVAAAAoMi03hU77rvFDfbeN3j6J0dcOjkJDQAA\noDNab57oduNYX8kKs4ZeO+tBW8nSxW3msxLhrl27wlAbAAAAgqA12NlsNpEyXbuWCWs1AAAA\nKDKtwW7RokVhrQMAAAAXKLjn2P35zfx3v1qz5+DRts/M7m1e/eP+Bu3qlQhTZQAAIIpyH3ky\n2iUgaNqDnfpSv9aDX1/tf2EfN71r5vQrGn/W9q4ZS+cMNilhKg8AAERH4vqNIe/zeNMGIe8T\nZ9J6V+yO/103+PXVHQZP/XXbPn9LSvVnJw1suWLukO6zt4StPAAAAGilNdg9MWxJau3RS198\noEG1k/dPmOy1Rs9eNaF+sRXjJ4atPAAAAGilNdh9eDin6h23nN9+7e1VnEe4rwIAACD6tAa7\nClbjiW3Hz29P35RhtPIMFAAAgOjTGuzGNC+x/e3bfzjsPLMxe/+yfvN3pjUeFYbCAAAAEByt\nwe66+S9XUPa0q9zo7uGPi8im916dOOKOOtWv2uMrPeODG8NZIQAAADTRGuziinf5+ddPr7/U\n8Mrk8SKy/JFhj73wdkKLGz7+eeP1pR1hLBAAAADaBPGA4sTqnd9Z1nneoV2bduz3GOPKVa9b\nLtkavsoAAABCK/vAPEepu3Y5PZWsxmjXEhbB/fKEiMQVr3xJ8crhKAUAAAAXIphg58tZ/Mb0\ndxd9s2XXvx6To2LNhl1v7HdX9+b86gQAAAgdr9tnNGu9WCzkbw9E9WQqpviwdB0iWufbm/t3\n/xaVuvYf/b9PVuw7lutO3/vluy8P7NGidrexJ7xqWEsEAAD/BWWspkeWvNq4VILVZC5VrfnL\nPx1a98aIWqVTrPFpza8detjt84/mzd03adC1lUskW+NT67e74fXV/wb1dhE5+MNrHRtVirPY\nytRsPv7N9YG7FZFUs3HGnj0P3XBFqbL5PNM3pmg9YrfivitfW3vw8vtnvP7E3RUTzCLiydoz\nZ2zfIdMmdRx/7Y8TLwn8dtWT/vHcOV+s/vWI01C6fPXufe65qnEpERHxLX/vpUUrN+w9Yaxd\nr/kd9/erHJd3zrugQcG2Bx4EAABixeRrX5jy/tIOlUxTb+06qE39Mu1vm//VT8rer67s8UDv\nBfct7V1VRMa2aTI3u+301z+uXcyw+qMZd7at5vlj313VkzS+XUS6d5s0ePrkidUcK958Yswd\nl7qr//Nky5IBuhWRD+/q2uHmp1c80zRan4xGWo/YjX1vZ0rNR76dNsSf6kTE5KgweOq3j9ZO\n3ThzTKFv/3rS8LeX/9vtjvufmTiqfVXXS+MHf7I3U0R2Lnhkyvw1La8b8NjQ2+07lo59aG7e\n0b+CBgXbHngQAACIHU2mfnR3l8uq1Wn2yEvNfO5Dny94umWD6i26DhlZPuGf7w6JSOa+yc+u\nPbxw1f9u7XJFk+bthjzz4fPVrY8PWqXx7X7N5y4Z1++6lm2uGj33o1U+cQAAIABJREFUu9G1\nU+bc9V7gbkXkYOVpj/brWqtKqQh/IMHSGuw2Z7sr33L9+e3X962Se+LHwO/1uvbOXn+47aOP\n9ejQsnqtBtcPntQp2fjJ7C2i5k6e/0e1Pk/06tiybtM2Q58ZnLlv8bv/ZIlIgYOCbQ/QFQAA\niDElW6X5/zAn24zWCvXtJ08tFjMZVJ8qIse2fKWqvrZJVuWUh7YcPbFzi8a3+w25ulze37cO\nrJ759/uBuxWRanfUCdc8h5TWYNejWNzhH/86v33vmsPWxDaB3+t17q5YuXKXKgmnGpTGSdbc\njExXxso9Tm/n9id/kcya0qZhvGXtigMiUtCgYNsDdKVxxgEAQJTkk1LMSXEGU3KO8ywH/nhA\n49vPH2BJtSgGW6HdJqZaij4fEaT1Grsn5t5Z9dpbn/5s7ehutfMat37xXO/P9jQYtyDwey1J\nbaZOPR3+3JlbXt2fWWlAtdys90Wkjv10DXXtpq9/zxCR3KyN+Q7KbRNce4Cu8l6uXr16/fr1\neS/79etnNIbyCjxFUUTEbDY7HNF/krN/1mKkGLPZLCJGozEWijGZTMryVYWPJ5LdvEm4i9Eu\nFj66PBRTkJgqRmKsnggUYzJp3dNFrBhFUUI+rays/8qZqKQqA1Tvpy/tcT508uo3dXjHNgdv\nfe3NftW1dzJz6f4OvU4+u+3dF/5IqvFcUpXiF95tLAi0uN93331nvry8nOHha+rMadLm0trV\nE5UT27asX7lup9FSsnvKahGtu7rdaz+fMf01T5UuYzqVde/OEpE08+kUlWY2uo+7RcTnyn9Q\nsO0Busp7uW7dujfffDPv5cCBA63W0D942Ww2+3NMLDAajXFxcdGu4iSDwRA7xWgRkmpdF96F\niFBMwSgmgAuvJ6aKCaGIFaMoSsin9d8JdrbUrlM6lX249TWO6Q+3rJGyZN7waav2fflhhaA6\nWXR7p2ecUzpUc6x868nxvx2f+nsPW2rKhXcbCwIFu9mzZ587tsn098Y1f29ck/dSfEceG/bg\nmPuHFDolV/qWV6fN+PLXo+163fvkLe1tinLCaheRo25fKcvJY6KH3V5TiklEDAUMCrY9QFd5\nhSUlJZUtWzbvpaqqXq+30NnRzn+QzOfzqWr079kwGAyKoqiq6vP5Ch/7v1SM/8CqFqFdPC4Q\nxRSEYgKIqXoiUIzBoPnBXuEvRlEUfz0x9S1cdO77bH32/QMnDbrxX5e1ZqMr3lq5sEMwP4Vl\ntJT+avINoyYMeGyvs1qjps999Pv9tVMuvNsYESjYud3uAEODcmLX0mEjZhobdH527u0102z+\nRrO9vsiKLTnuUpaTH9zWHE9S3aQAg4JtDzwVv759+/bt2zfv5ZEjR0KbwFJTUw0Gg9PpzM7O\nDmG3RZOUlGQ2m10uV2ZmZrRrkfj4eJvN5vF4MjIyCh87zOx2u8Yx09PTL3xyCYWPognFFIRi\nArjwemKqmELFx2t9nGwEiomLi3M4HD6fLwLTuhjtd3ny/i5We4E75/Sge7cdvffU3wZziYdn\nLXx4VlHebi95p8d1p4isveepc95eULcictR90QTxIH55IuefLavWbz6SlU/au+mmmwK8UfVl\nP/nwLGuH+6bf2/7MoyK25CvKWmYtXn3o8s7lRMSduWHdidxeV5QKMMiWXCGo9sBTAQAA0BOt\nwW73ghFNb5581J3/KbPAwS7737c2Z7vvbOBYv25dXqM5rnrDuknDetUaMW/8spIjayW7Ppkx\n2VG2U58yDhERxVzQoGDbA3QFAACgJ1qD3X13zzxuLP/Yi09dUaeCKchfh834c7eIzHvmyTMb\nk6qMe2vqpdVuemKQa+o7k8cdcSpVG7abOGxAXt8FDQq2PfAgAAAA3dAa7JYdczWc8Mn4gQ2L\nMI0yVzz16RUFDFOMnfoO69Q3mEHBtgceBAAAoBda7xVqlWixlbCFtRQAAABcCK3BbsrjHdeN\n6L/uYE7howIAACAatJ6KrTtk4YAXi7esUK1D58vLp537YIi5c+eGujAAAAAER2uw+350mxf/\nTBdJ/+aLj86/eYJgBwAAEHVag92gF9fFl++15Ls5LSqmhrUgAAAQC443bRDtEhA0TcFO9WX9\nnu1pM+cpUh0AAP8FCQkh/IURRI6mmycUxVTRakz/5VC4qwEAAECRabsrVrF+NqPPlmldpy76\nPfq/Yw8AAID8aL3G7p43tpU1nXiwe/3RySWLx/+/vTsPbKLM/zj+JGmaNj1CaUEOUUDkEkQB\nl0tEEY+uULAc5ZBrFRFcEeGnwHIKuqziAiqrK7IqiFBADhFRkaPcKyC6gIAgUChQoC2lpXea\n5PdHsFSkaUqTTPrl/fqrM/N05tOkmX46R2K8ZmlSUpKngwEAAKBs3C12UVFRUY91vserWQAA\nAFAO7ha7lStXejUHAAAAysndT54AAACAn3P3iF1GRoaLpRaLxRNhAAAAcOPcLXaVKlVysdTh\n4GZZAAAAjblb7KZMmfK7aUfh2eMHVy354qKu5pT3/+7xWAAAACgrd4vd5MmT/zhz9ozvH67f\nYfbbP4wf3M+jqQAAAFBm5bp5IviWVh9OvSf1f7M2Z+R7KhAAAABuTHnvijXfatbpDA3M175l\nMQAAAHysXMXObk2ZNfEnY+i91Yy8bQoAAIDG3L3Grk2bNn+YZ08+uu9kWl7LCXM8mwkAAAA3\nwN1idz36Wk07dnv4qTfHt/JYHAAAANwod4vdzp07vZoDAAAA5VS2I3YXTx9Pybb+cX6DBg08\nlAcAAAA3yN1il5e6vvv9cWt/uXjdpXzyBAAAgObcLXZzu/b/+ujlzsPGPn537QCdVyMBAADg\nRrhb7F7bnVI3bsWX78V4NQ0AAABumFvvP+ewXU6x2m6Pu9vbaQAAAHDD3DpipzOEPlgp6Pgn\ne1TX2l7OAwCAZLqE7e4MS2nCXYm4EW5+YoQufs20gq+fGjRt/vnsQu8mAgAAwA1x9xq7HmO/\nuKW6cf6kQQsmP125WrVgw+9uoEhKSvJCNgAAAJSBu8UuKioqKqrT7fd4NQwAAABunLvFbuXK\nlV7NAQAAgHJy8xo7AAAA+DuKHQAAgBAUOwAAACEodgAAAEJQ7AAAAISg2AEAAAhBsQMAABCC\nYgcAACAExQ4AAEAIih0AAIAQFDsAAAAhKHYAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAg\nBMUOAABACIodAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAAIATFDgAA\nQAiKHQAAgBAUOwAAACEodgAAAEJQ7AAAAISg2AEAAAhBsQMAABCCYgcAACAExQ4AAEAIih0A\nAIAQFDsAAAAhKHYAAABCBGgdwO/o9V4puzqdzmAweGPNZY3hP2GcD7WfhHE+Mu7wh7RFCFMS\nwrjgV3l8EMavXt3u/4kpaxibzVb2OBCIYnetSpUqub8XcF9wcHBwcLDHV3tjTCaTyWTSOsUV\nAQEBERERWqcoA4+kzS//KpRShCkZYVwofx6/CuNBFTpMamqql5KgYqHYXSs9Pd3hcHhwhRER\nEXq9PicnJzc314OrvTHh4eFGozE/Pz8rK0vrLCo0NNRkMlmt1szMTK2zKPdrd1paWvk3F1r+\nVSilCFMywrhQ/jx+FaZUISEhbo70QRgf72pwE6LYXcvhcHi22BVfszdWewO89zOWNcY1X1QI\nfpWWMCUhjAt+ledmC+P+JvzqkUEFws0TAAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAAIAR3\nxUJLuoTt7gxLadLA20kAABCAI3YAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBMUOAABA\nCIodAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAACMFnxeKmEDZjaumDouO8HwQAAC/iiB0A\nAIAQFDsAAAAhKHYAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBMUOAABACIodAACAEBQ7\nAAAAISh2AAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAUOwAAACEo\ndgAAAEJQ7AAAAISg2AEAAAhBsQMAABCCYgcAACAExQ4AAEAIih0AAIAQFDsAAAAhKHYAAABC\nUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBMUOAABACIodAACAEBQ7AAAAISh2AAAAQlDsAAAA\nhKDYAQAACEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAUOwAAACEodgAAAEJQ7AAAAIQI0DoA\nAAA3LmzG1NIHRcd5PwjgFzhiBwAAIATFDgAAQAiKHQAAgBAUOwAAACEodgAAAEL4+q7YT4YN\nDJr6795Vgn+bYU+If+/LLXuTLhsaNWk1aMTgOsGG0haVdb7rRQAAAEL48oid49dtH608e6nQ\n4SiadXz5hFlLdraJHTJ55ADzsfXjR33oKG1RWee7XgQAACCGj47Ynds6e8Lc7Rcy8n8311Ew\nc8mhev1n9uhURylV7w3Vc+CMxcn9+1YPKXFRNWPZ5rtYVfUQ3/zsAAAAvuGjI3aV7+4xdvL0\nt94YU3xmfsaWU3m26I41nJOmiPbNQgN3bz7vYlFZ57veCgAAgCQ+OmIXaLm1nkXZCoKKzyzI\n3qeUamy+muEuc8C6AxkuFhW0L9t811txmjt3bnx8fNHk2rVrTSZTeX/gYnQ6nVIqODg4ODi4\n1MHe5gwTFBTk2Z+xPGHcERkZWc5tFZTz+4spfxjluTyEKQlhXBD2gvKrMB5U1jBpaWleSoKK\nRcuPFLPnZyulooxX72OIMhqsmVYXi8o63/VWnPLy8jIzM4smdTqd+4XDfd5YZ3n4Wx7X/Cot\nYUpCmJL4VRjlZ3kIUxK/CoMKRMtipzeZlVIXrfZqgVfOCKdabQERAS4WlXW+6604tWvXzmKx\nFE1ardbCwkIP/phms1mn0xUUFFit1tJHe1lQUJDBYCgsLMzPzy99tJe5f9QwOzu7nNvy4C96\n+cMoz+UhTEkI44KwF5RfhSmV0Wh0c6QPwkAkLYud0dxUqc2Hc63VAq/8gT+SW2i5y+JiUVnn\nu96KU4sWLVq0aFE0mZaW5nB48q7Z4OBgnU5XWFiYm5vrwdXemMDAQGex84cwBoO7bzpT/rRh\n5fz+Yjzy0HkqD2FKQhgXhL2g/CqMB/lVGFQgWr5BcVClh2oGGtbuSHFOWrP27rlc0Pyhai4W\nlXW+660AAABIouknT+iMo3s0PPqfKRv3Hjl7fP+8iTNDaj7Sv0aIq0Vlne96KwAAAIJoeSpW\nKVUv7rXh+bMXzZyYlqe7o1mHaaOH6EpbVNb5rhcBAACI4dNiZwi8dfXq1b+bpTM8MnD0IwOv\nN7qkRWWd73oRAACAFJqeigUAAIDnUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBMUOAABACIod\nAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAU\nOwAAACEodgAAAEIEaB0AYoXNmFr6oOg47wcBAOBmwRE7AAAAISh2AAAAQlDsAAAAhKDYAQAA\nCEGxAwAAEIJiBwAAIATFDgAAQAjex84XdAnb3RmW0qSBt5MAAADBOGIHAAAgBMUOAABACIod\nAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAU\nOwAAACEodgAAAEIEaB0AAAAhwmZMLX1QdJz3g+DmxRE7AAAAISh2AAAAQlDsAAAAhKDYAQAA\nCEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAUOwAAACEodgAAAEJQ7AAAAISg2AEAAAhBsQMA\nABCCYgcAACAExQ4AAEAIih0AAIAQFDsAAAAhKHYAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIH\nAAAgBMUOAABACIodAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAACBGgdQC/YzabPbtCnU7n\n5siQkBDPbvqPDAaDUspoNPpgWx7kV2kJUxLClMSvwig/y0OYkpQ1THZ2tpeSoGKh2F3L/R5W\noTet4Y95A/wqLWFKQpiS+FUY5Wd5CFMSvwqDCoRid63s7GyHw+HBFQYGBro5Misry4PbvS6L\nxaLX661Wqw+2Fea5VZU/rV+FUZ7LQ5iSEMYFYS8owgDFcY0dAACAEBQ7AAAAISh2AAAAQlDs\nAAAAhKDYAQAACEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAUOwAAACEodgAAAEJQ7AAAAISg\n2AEAAAgRoHUA+JouYbs7w1KaNPB2EgAA4FkcsQMAABCCYgcAACAExQ4AAEAIih0AAIAQFDsA\nAAAhKHYAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBMUOAABACIodAACAEBQ7AAAAISh2\nAAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAUOwAAACEodgAAAEJQ\n7AAAAISg2AEAAAhBsQMAABCCYgcAACAExQ4AAEAIih0AAIAQFDsAAAAhKHYAAABCUOwAAACE\noNgBAAAIEaB1gAovbMZU1wOsSqnoOJ9kAQAANzWO2AEAAAhBsQMAABCCYgcAACAExQ4AAEAI\nih0AAIAQFDsAAAAhKHYAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBJ8VK0qpH1xrV3xw\nLQAAYnHEDgAAQAiKHQAAgBAUOwAAACEodgAAAEJQ7AAAAISg2AEAAAhBsQMAABCCYgcAACAE\nxQ4AAECIm+STJ+wJ8e99uWVv0mVDoyatBo0YXCfYoHUkAAAAD7spjtgdXz5h1pKdbWKHTB45\nwHxs/fhRHzq0jgQAAOBxN0GxcxTMXHKoXv/XenRqc1eL9iPfeD7rzNrFydlaxwIAAPAw+cUu\nP2PLqTxbdMcazklTRPtmoYG7N5/XNhUAAIDHyb/GriB7n1KqsfnqT3qXOWDdgYyiyaNHj548\nebJo8r777tPrtem7JpNJk+1eF2FKQpiSEKYkfhVG+VkewpSkrGHy8/O9lAQVi/xiZ8/PVkpF\nGa/eLRFlNFgzrUWTX3/99YIFC4omt2/fXqaXkwdfSWFhYeVcA2FK4ldhlOfyEKYkhHFB2AuK\nMFc2TbGDUkopncMh/EaCy2f+2W/Y5rmfr6oWeOU4XPwzvb+t+srHf2/unHznnXfKU+wAANBc\nampqVFSU1imgPflH7IzmpkptPpxrrRZ4pa4dyS203GUpGjBixIgRI0YUTaalpV2+fNmDASpX\nrqzX63NycnJycjy42htjsViMRmNeXl5WVpbWWVRoaGhQUJDVas3IyCh9tJeZzWaz2Wyz2dLT\n07XOokwmk/Of9dTUVK2zKKPRaLFYlFLp6ek2m03bMHq9vnLlykqpjIwMq9Va6nhvi4yM1Ol0\nWVlZeXl5WmdRERERBoPBT3Y14eHhgYGB+fn5nt2d3hjnrqawsPDSpUtaZ1HBwcEhISF2u/3i\nxYtaZ4FM8m+eCKr0UM1Aw9odKc5Ja9bePZcLmj9UTdtUAAAAHie/2CmdcXSPhkf/M2Xj3iNn\nj++fN3FmSM1H+tcI0ToWAACAh8k/FauUqhf32vD82YtmTkzL093RrMO00UN0WkcCAADwuJui\n2Cmd4ZGBox8ZqHUMAAAAb7oJTsUCAADcHCh2AAAAQlDsAAAAhKDYAQAACEGxAwAAEIJiBwAA\nIATFDgAAQAiKHQAAgBAUOwAAACEodgAAAEJQ7AAAAISg2AEAAAhBsQMAABCCYgcAACAExQ4A\nAEAIih0AAIAQFDsAAAAhKHYAAABCUOwAAACEoNgBAAAIQbEDAAAQgmIHAAAgBMUOAABACIod\nAACAEBQ7AAAAISh2AAAAQlDsAAAAhNA5HA6tM/iXtLQ0zz4m77//fkZGRocOHdq0aePB1d6Y\nxYsXnzx5slmzZtHR0VpnUWvXrt23b99tt93Wt29frbOoHTt2bNmyxWKxDBs2TOss6sCBA2vW\nrFFKjRkzRqfTaRvm7NmzCxYsUEoNGzbMYrFoGyYrK2vOnDlKqT59+tx+++3ahlFKzZgxw2az\nRUdHN2vWTOssat68eampqW3btn3ggQe0zqKWLl16/Pjxxo0bx8TEaJ1FrVu3bu/evTVr1uzf\nv7/WWdSuXbs2btwYEhLywgsveHzlUVFRHl8nKpwArQP4ncjISM+ucNeuXcnJyQ0bNvSHl9yB\nAwd++OGH8PBwfwiTmJiYkJDQsmVLfwhz/vz5hISEGjVqTJw4UessKicnJyEhQSk1Y8YMzYvd\nmTNnnGFGjhyp+TPlcDicYXr16qV5GKXU1q1bCwoK2rVr5w9h9uzZk5iYWLduXX8Ic/jw4R07\ndphMJn8Ik5SUlJCQ0LRpU38Ik5qampCQULly5VdffVXrLJCJU7EAKraC9ON2rTMAgJ+g2AHX\nl3suQ+sIV+Wl/PDam0vzuHDiD/JSfhgz7OUxnxzVOggA+AVOxXpdaGhoeHi4yWRSShVkHjwd\nUL+uWbOH3Ww2h4eHBwUFKaVsuUmfvj//+wPHA6Nqdur5bJf7avk4TFBQUHh4uNlsVkrZ8pOX\nf7Z8/7G0Gg1a9+/3aKjB1+cfTSZTeHh4aGioc9Jhy3h2+F/uf/6fQx+u7eMkSimj0RgeHl40\nmZfyw7gX/p5668O5NhXk898dg8HgDKPX65VS1svHF3ywcO+xlMjbmvR4duDdkUG+DKPX651h\nAgIC1G+PTHLELY7NCWrQnb5M4hQWFma1WgMDA5VStvzklYtW7D+eVu2O5n36P1HJ57/DISEh\n4eHhzjAOW8Z3n39x4uLl8NvuebRT60iTwcdhnLua4OBgpZTDlr5uxdenUjNqNL2/Y9smwXpf\nPzLFdzVK6/3wNbsazffDkIebJ3zq1JdjX/4iZPo74zTsdk6FOUfHDhmXUfv+6Na1LxzYtHbn\niS6TPhrSUpsLUAouHxg/fEpajRZt64b897tNebc+vmD2UM0PJv+115NJ+erPI2Zp0u2KFLW6\nd/4xLCJA4+vt7AXnxg/66/nq9/65Ta1jv+QOfmVIVaNmT1TRIzNrWo+hfUd8tnxxkM8bQ5HC\nnENjh05MqdaiQ/3wPes3XKzUet57L/v+/xMna/ahCX+dfLZS41b1K5/6acfRi5ZnJr3+RFNt\nXt223CPjnht/OqTB3TWMh378MdtcZ8gr4x/TKIwT+2EI54APFWTv69KlS6+npx7LtmqbZPu0\np/u9+Jn9t8lvpgzuNXieVmE+f+mpwRNXFNodDocj98KO2JiY9el5WoUpsuyZuGH/fCUmptu/\n15/QKkPuhT0j42KfGv2vi9Yrz5W9MPdM0vlCu+vv85bT34ztOWiOtdjW8y7naJLkmkdmZv+e\nyy5ok8Rpy6TBT42c73xe8i/92LdbzKxTmVqF2Thh8KDxV15Q9sKs+EmDY2K6/3vdMU3CHJj1\nXN+/znf+zhRknpw/dUhM1x7/2XRSkzBO7Ichm+aHRW4uWYk7lFKWnJ/GjZh+PKdQwyTrD12q\n8Vj7ouMJrZ+qa83+WaMsjkXHMps928l5dMMU1Tw8QHdm/dIPPvh4+5FLGkVSSqlGDS3mes9P\n7H3v2nde+mBDolIq5+xhH1+kn5d2IjG3sFVcz4gAnXLYti6Z3adH3HPDn+nZ59nFm3/1bRal\nlLq4Ny301nbO44ZJu1aNHNy7Z9+4vn954fPtx30Zw5Z38pqjmB0bWTYtP+nLDNfYcDSz+uMd\nnb/DgZZ7WoSaLice2LRx4/4T6b4Ps/KXS3cMvhJGZwjpOjJOKdvaOaMX/pjm+zBHD16KuLu1\n83fGGHbbgAnvD4+u/cWslxbt1SCME/thyEax8yFH4azXv2s7YNq/5k6vb92v7T6lfogx+bvd\nRZM5SdlGcyONsugahxh//fbKxe8/LpqUbg9NTExLPpLw5itDFv/vokapVJX2VVO2JbfsM8nZ\n7d5duWzEiHEfHPDp3+lKDXtM691kwxvj/5dZ8OuySW+vPtnvlanvzv7HgAerxc8c/eHuVF+G\nUUpFNK+UeWx5gUNdPrn8xemL7nzi2en/eDW2peXTN196f8cFn8UwBN3er2ef4uem6/RpcX5r\nvM8C/FGzSNOpFSsu2RxKqcxjX2/PzD84f/Hq5fMnjPzL7K993TirGvXnNycVTdqtWUGVo5/r\nUG356xPOFNh8HObOJpUubP2isOiSH53hsaFvDn2g6rK/j/s1z9dhlGI/jJuA1ocMby4XD59y\nflFw+ZcJA3pqeC7g0i/x3brGbrl05YznplH9n5v9c9HSi8fTfRnm3LZ3nxr9ntXucNitH02Z\nvPNUlsPhcNgLV097unvfyb5MUlxOyrKe/Wc6v94ya2iXLl36j16uQQ574adjBsQ9O/PluNiN\n56+ebfzve8N7PPWGj7MU5h7t163r35Ye/H7MwJeWHCmav+3t57r3mejjMMXZC7MGPNl1YaJm\nZz+zkxOG9nqy56AXp736t7huMa/G73CeCN296OVusYNzbD49d35s2ZiYrt0XbjpidzgKMk/M\nfr7v8/8+aC/MGBMXO3p5oi+TOByO/MzdvbrGTFj6c/GZ9sLMV/t2H/7eQR+HcWI/DNkMU6ZM\n0bpbiuWwpa9bvnLTlm3n8oNq3VrVqNMFR115435DYGT7R5od+DJ+6bojLTq1i/D+FejXhAmN\navLQvZ0a1wxzLpwx79OmLw66z2JSSiVt/Wj45LeqPda1drAXrywunqdh284xj7YM1OmUTn/v\ngw/eaglUSimdvlbD7CWff/d4z97evo3uj8+UUspgjPps4dwne/XIPbnpjXkbq/+pfvK+hMyq\nrVvWreTTMHr9Xe1b7lky96i9+thBXYuGRdbJX7Lsq959env1obkmTKAxsoUlcf5HC85cLmj0\n3MAWoYHOYVXuyFuy7NvOvXqbvPlMXfdpctLpA6sf37BonSN/3li6AAAJbElEQVQ2+i7vBXAR\nxhxWO7rz/WHGgLCgX38+23rOhCedJ0Kr1ImMX7b2vm69qnjzNX5NmKqNHzSl7Pvss4Ur1n6z\nIn5VTr1Hp498NMgQdFv6ti+3Ve7euZ73kiilCjIPnrRFFO3TDKYazc3HFsxfmFW9TYvaV147\nOr2pfuSPy7881/PJ1l4N88c8SikN98PXhAmK1Hg/DJE4FestttwjY/7y7PxNB9PSLiydNbH/\nwFHf7v/diTNjaP1J/3rNN+cCrhvmlgZXPmPDmnMgKd/2WFWzUipp60cj3/qiWdy4DhFefBuL\nP+bZfOA6F9xkHvrFaL7L27eClvRM6Y1VGwfZvtn3zUv/9271mJdnjpvhPCe7ITXPx2EMploT\n//HM40NHFx+Z8fN+Y2gLrz401w1ze/TY0Z3vPJZX+NPyA0UjM385ZDQ3DPPmTaClvqDuHdbv\n8smFXyZleS+D6zCG4Jp/7hr7pxC9ydKwaGT6/g0BQXXv9Obf5uuEOZARO2L6vJmvD+vbd8y0\nWe9PGmIx6JRSNqs94Ld32fCec5sXXLNPuyNmwqgnGq6Z9eLMFXuLZhrMAbqA8OutwOt5ivPl\nfvi6YTTcD0MsrQ8ZiuXmvWDOcwHT15zSMEzepU1dunRJzred2vKf2JiYVxft9moY13kSN378\n9U+nbHZb4q6Vg2O7vbPlnIZh1o3qHxMTM2H+9qLBh7cd0iqMw+FwOOw/HzpdaC88tmvV4Nhu\n72zz7oPjIszuz2d2i4kZPyf++5/+t2nNx4Niu87ccEarMEVWvjyg56A38+xeP+/pIkzq/96M\n6dpz6bYjuQU5h7YtGxzbbZbWj0zyDzt+SUr54bv4/k92+/ToJa+GcZR8z+lPq+fExsQMGffP\nTTt3/7Bl5Yu9npyz47y3w7jI87sxPtkPuw7j+/0wpOJUrLfs+Oiz5Ob9O7eIVEoZTJZmD/y5\ncuaehZ/GOxp0alrdXDTMEBjZ4c+dHmh0i4ZhDMbK3yxftT8nefEn3zbrPXFSn5ZeDeMyT8cz\n25Z9NP+zZSuWrt1y+P5BE1949A7twnTq0vsBq+nel/pePVsUdZt332LK9TN1fvvbL06ZsyR+\nyXf/Pdvl+YnPdKitVZjHHu7Y8a7qJ/dt/Xz1ukMnsmOGTxj8wG1ahSl6QdVuWWV5fHxe6yfu\njTBpFaZVs4eCL+5fsGDhsiXLNu4+HT188tCH62gVpml1sy3v1/Fjpi5buXLznhMPPz35L629\n+zQppTKPrlq1/miULuWr9b8WP79ZrcGfHm1xx6XEvau+Wr/3YOojQ/82sK0v3oy3pDzF+WY/\n7DqM7/fDEEvrZinWgbef69n/Tevvjh3Yv3rruW7dhxzNLfS3MD/PH92lSxef/Y/oOs/FxEPf\n79xz6lK+P4TxTQb3w6SfPvrLsVMZeb4IVrEeGaeT2w/7Q5jMlNOHDx33zT0TpYaxF2adSTyR\nkW/zQRiH3Tqxb/fpy37S/L4Ef8xTWhgf74chFcXOW/zqXrBSw9jteV99+ZP/5PElwhCGMB7k\nP/ec+mEe12F8vB+GVJyK9RbN7wUrUxidLuDO+tX8J4/PkhCGMITxLA3vOfX/PK7D+Hg/DKm4\nK9aLtL0XzJ/D+FsewhCGMN7g43tOK1YevwoDSThi5121W3RqHJq28OOPNuxPDgsxXjyxa87b\n65s/P+pPtUJu8jD+locwhCGMNxQdmjoa0vb++hZtw/hbHr8KAzF0Doej9FEon/Qju5atWrX1\nwJnAoKgnBg6LbefdNwitQGH8LQ9hCEMYb7DlpxtMEVqnuMqv8vhVGAhAsQMAABCCa+wAAACE\noNgBAAAIQbEDAAAQgmIHAAAgBMUOAABACIodAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAA\nCEGxAwAAEIJiBwAAIATFDgAAQAiKHQAAgBAUOwD+K75RVHBEJ61TAECFQbED4EcufD+hS5cu\nOzILtA4CABUSxQ6AH8k5t3PNmjXnrDatgwBAhUSxA+A2R0F+ocODq8uz2j23NgAAxQ5AaeIb\nRVlun7R77qhbLaHBgYZKVes+9bcFdqX2fDLm3tq3BJtC6zRuNWXxwaLx579f2i+6TZVKoYEh\nlvr3dZr6ScIf15a86b3mt0cEBxpCImu2enzg+tPZSqm/16lUp9tGpVT3KHN4rVeKviX33I5n\nY9pFhptDImu2enzAd6ezffSTA0BFo3M4PPj/NwCB4htF9U+06G3p/Ua+1KqWafV709cevtQy\n7oGfN+SMGjUg0nbi7dffPWU1brl46f7wwJQ9b9VrMybXVK/vwG51w3K3fvHp+sOXOk1I+G5a\nh6K1DT53d2Tulrq9hse2bZi675s3P1hjjIzOvPDVqS0bt24YPXDqTxOWrn6waoOHO9SPbxQ1\n4GTkfcGnjJ2HPtm2fsrer9/88Ctjlc6Xz6/mv1IAuA4HALi0uGGkUur/NpxxTuamrVFKGUw1\ntqXnOef8uqijUqrXz6kOh71XVbPR3GhLcrZzkc2aMvreKJ0+aEtGfvG1tZqSULT+lb3qKqXW\npec5HI4TqzoqpZan5vxu8KtXB38Vd4dSavOlfC//0ABQIfFPL4DSGc0NZ3Ss4fw6qPITYQZ9\nVJPZ7SqZnHOqtG2vlMq12nNTVyy9kNNgyMftq5mdi/QBUeMXDXLY8yZ/e7pobXqDeeW49kWT\nzXrdrpS6bLv+9XY6Q/DnY+8vmqzfpaZSKsvOxXkAcB0UOwCl0wdEFp8M0ClTlYiiSZ3e6Pwi\nL/0bpVTdAXWKDw6tNUAplbzu3NVvNzepHnh156ML0LnYdGBo81sDDW4OBoCbHMUOgAdd55pd\nnS5AKeUodjutTmd0f406XVD5YwHATYJiB8BjgiIeU0qd+Cyx+Mys058qpW55+BZNIgHATYVi\nB8BjgqO6x1YxH/7g6Z0pec45jsKL0/vN0+lNkzrXcn893KwPADcmQOsAACTRv//lxHXtxj94\nR4uBTz9ZJzR384qPvz2Y3nH8hod/u9PCNWOYUSk19915+Y3+1Ld3Ky+nBQBpOGIHwJOqthp7\nZPOnsa1DV3w0c9JbH/4adM+rH2/a8FpHt7/9jc7Na295fdT/Tf/WqzkBQCTeoBgAAEAIjtgB\nAAAIQbEDAAAQgmIHAAAgBMUOAABACIodAACAEBQ7AAAAISh2AAAAQlDsAAAAhKDYAQAACEGx\nAwAAEIJiBwAAIATFDgAAQAiKHQAAgBD/DzOnMNXuJGxtAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Visualization: Monthly total rides by user type\n",
    "All_Trips_v2 %>%  \n",
    "  group_by(member_casual, month) %>% \n",
    "  summarise(number_of_rides = n(),.groups=\"drop\") %>% \n",
    "  arrange(member_casual, month)  %>% \n",
    "  ggplot(aes(x = month, y = number_of_rides, fill = member_casual)) +\n",
    "  labs(title =\"Total rides by Members and Casual riders by Month\") +\n",
    "  theme(axis.text.x = element_text(angle = 45)) +\n",
    "  geom_col(width=0.5, position = position_dodge(width=0.5)) +\n",
    "  scale_y_continuous(labels = function(x) format(x, scientific = FALSE))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9354981b",
   "metadata": {
    "papermill": {
     "duration": 0.015283,
     "end_time": "2022-09-27T15:24:27.983958",
     "exception": false,
     "start_time": "2022-09-27T15:24:27.968675",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### INSIGHTS\n",
    "\n",
    "From my analysis we can conclude that:\n",
    "\n",
    "* The casual riders have the most ride length i.e. they ride the most.\n",
    "* That Casual usage of bikes is more on weekends (Saturday and Sunday) and low usage on weekdays. Member bike usage is relatively the same all through the weeks with a slight decrease on weekends.This shows that casual riders use the bike more in their leisure time.\n",
    "*  We have more members riding in all months except the summer months (June,July and August) where we have more casual riders\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b559488d",
   "metadata": {
    "papermill": {
     "duration": 0.015684,
     "end_time": "2022-09-27T15:24:28.014252",
     "exception": false,
     "start_time": "2022-09-27T15:24:27.998568",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Recommendations\n",
    "\n",
    "Key recommendations based on my analysis are:\n",
    "\n",
    "* As casual rider usage often peaks on the weekend, the marketing campaign can include weekend only membership subscription at lower price to attract casual riders and in turn convert them to members riders\n",
    "\n",
    "* Incentives and discount should be given to casual riders who decides to subcribe to the annual membership plan as a way to entice the other casual riders into annual rider plan.\n",
    "* A qualitative Survey for Casual Customers to take at the end of their ride to see why they didn’t choose to become subscribers and what the Company can possibly do to change their minds."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "65b82a10",
   "metadata": {
    "papermill": {
     "duration": 0.015882,
     "end_time": "2022-09-27T15:24:28.045616",
     "exception": false,
     "start_time": "2022-09-27T15:24:28.029734",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "** Thank you for reading my case study project until the end, hope you have enjoyed it!"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 295.247613,
   "end_time": "2022-09-27T15:24:28.482862",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-09-27T15:19:33.235249",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
