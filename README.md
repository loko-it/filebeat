# ELK PfSense
Run from command line to install:

fetch -o - https://git.io/fppzS | sh -s

SSL placement:
/usr/local/etc/

Optional add menu item by add this to the service section of /cf/conf/config.xml

	<service>
		<name>filebeat</name>
		<rcfile>filebeat</rcfile>
		<executable>filebeat</executable>
		<description><![CDATA[Filebeat service]]></description>
	</service>
