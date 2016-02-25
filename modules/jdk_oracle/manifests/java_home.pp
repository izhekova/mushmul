class jdk_oracle::java_home {

		file { "java_home.sh":
		    path	=> "/etc/profile.d/java_home.sh",
				ensure	=> "present",
				owner	=> "root",
				group	=> "root",
				mode	=> '0644',
				replace => true,
				content	=> "export JAVA_HOME=/opt/java_home \nPATH=\$PATH:\$JAVA_HOME/bin",
			}
}
