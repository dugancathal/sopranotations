for dir in $(find ~/.gradle/caches/ -name '*springframework*'); do
  for jar in $(find $dir -name '*.jar'); do
    unzip -o $jar -d /tmp/jars
  done
done
grep -R -l '@interface' /tmp/jars | xargs javadoc
