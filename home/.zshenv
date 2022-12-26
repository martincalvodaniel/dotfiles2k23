export username=""
export password=""

export ORG_GRADLE_PROJECT_nexusUser=${username}
export ORG_GRADLE_PROJECT_nexusPassword=${password}
export MAVEN_USERNAME=${username}
export MAVEN_PASSWORD=${password}

export LIBGL_ALWAYS_INDIRECT=1
export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"
