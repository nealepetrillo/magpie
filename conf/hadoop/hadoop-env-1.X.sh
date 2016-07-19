# Set Hadoop-specific environment variables here.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
export JAVA_HOME=HADOOP_JAVA_HOME

export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"HADOOPCONFDIR"}

# extras 
export HADOOP_LOG_DIR="${HADOOP_LOG_DIR:-HADOOPLOGDIR}"
export HADOOP_HOME="${HADOOP_HOME:-HADOOPHOME}"
export HADOOP_COMMON_HOME="${HADOOP_COMMON_HOME:-HADOOPCOMMONHOME}"
export HADOOP_MAPRED_HOME="${HADOOP_MAPRED_HOME:-HADOOPMAPREDHOME}"
export HADOOP_HDFS_HOME="${HADOOP_HDFS_HOME:-HADOOPHDFSHOME}"

# Extra Java CLASSPATH elements.  Optional.
# export HADOOP_CLASSPATH=

# The maximum amount of heap to use, in MB. Default is 1000.
export HADOOP_HEAPSIZE=HADOOP_DAEMON_HEAP_MAX

export EXTRA_HADOOP_OPTS="EXTRAHADOOPOPTS"

# Extra Java runtime options.  Empty by default.
export HADOOP_OPTS="$HADOOP_OPTS $EXTRA_HADOOP_OPTS"

# Command specific options appended to HADOOP_OPTS when specified
export HADOOP_NAMENODE_OPTS="-Dcom.sun.management.jmxremote -XmxHADOOP_NAMENODE_HEAP_MAXm $HADOOP_NAMENODE_OPTS"
export HADOOP_SECONDARYNAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_SECONDARYNAMENODE_OPTS"
export HADOOP_DATANODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_DATANODE_OPTS"
export HADOOP_BALANCER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS"
export HADOOP_JOBTRACKER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_JOBTRACKER_OPTS"
# export HADOOP_TASKTRACKER_OPTS=
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS

# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

# Where log files are stored.  $HADOOP_HOME/logs by default.
# export HADOOP_LOG_DIR=${HADOOP_HOME}/logs

# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
# NOTE: this should be set to a directory that can only be written to by 
#       the users that are going to run the hadoop daemons.  Otherwise there is
#       the potential for a symlink attack.
export HADOOP_PID_DIR="${HADOOP_PID_DIR:-HADOOPPIDDIR}"
export HADOOP_MAPRED_PID_DIR="${HADOOP_MAPRED_PID_DIR:-HADOOPMAPREDPIDDIR}"

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
# export HADOOP_NICENESS=10

# Wait hopefully for more than default of 5 seconds before giving up
# on killing a daemon
export HADOOP_STOP_TIMEOUT=HADOOPTIMEOUTSECONDS
