# Defaults.
PROJECT='www.worldcommunitygrid.org'
WEAK_KEY='949787_15ca7825fb58f9d01b6ad15221c3f048'

# Argument parsing.
while getopts ':p:w' flag
    
do
    case $flag in
        p) PROJECT=$OPTARG;;
        w) WEAK_KEY=$OPTARG;;
        \?) help; exit 2;;
    esac
done

# Start BOINC.
/usr/bin/boinc \
  --no_priority_change \
  --skip_cpu_benchmarks \
  --attach_project \
  $PROJECT \
  $WEAK_KEY
