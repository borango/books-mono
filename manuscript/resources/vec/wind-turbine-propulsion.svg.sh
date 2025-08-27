cd      $(dirname $0)
object=$(basename $0)
dot2svg -f ${object%%.*}.dot
