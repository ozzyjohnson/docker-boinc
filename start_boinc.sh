# Defaults.
PROJECT='www.worldcommunitygrid.org'
WEAK_KEY='949787_26d9d15438e75ca7be6aa03e94a9613e'

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