X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2181" "Friday" "2" "December" "2016" "10:07:43" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20161202104846.435@usenet.piggo.com>" "64" "[oss-security] CVE request: tomcat privilege escalations in Debian packaging" nil nil nil "12" "2016120210:07:43" "[oss-security] CVE request: tomcat privilege escalations in Debian packaging" (number mark "U       seb@debian.o Dec  2   64/2181  " thread-indent "\"[oss-security] CVE request: tomcat privilege escalations in Debian packaging\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32002 invoked by uid 550); 2 Dec 2016 13:35:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30695 invoked from network); 2 Dec 2016 10:08:05 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Fri, 2 Dec 2016 10:07:43 +0000 (UTC)
Message-ID: <20161202104846.435@usenet.piggo.com>
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.2 (Linux)
Subject: [oss-security] CVE request: tomcat privilege escalations in Debian packaging

Hello,

the Debian security team would like to request 2 CVEs for issues in
Tomcat packaging. Both were discovered by Paul Szabo.

  * Privilege escalation when upgrading tomcat8 package
    https://bugs.debian.org/845393

    > Having installed tomcat8, the directory /etc/tomcat8/Catalina is
    > set writable by group tomcat8, as per the postinst script. Then
    > the tomcat8 user, in the situation envisaged in DSA-3670 and
    > DSA-3720, see also http://seclists.org/fulldisclosure/2016/Oct/4
    > could use something like commands
    > 
    >   mv -i /etc/tomcat8/Catalina/localhost /tmp
    >   ln -s /etc/shadow /etc/tomcat8/Catalina/localhost
    > 
    > to create a symlink.
    > 
    > Then when the tomcat8 package is upgraded (e.g. for the next DSA),
    > the postinst script runs
    > 
    >   chmod 775 /etc/tomcat8/Catalina /etc/tomcat8/Catalina/localhost
    > 
    > and that will make the /etc/shadow file world-readable (and
    > group-writable). Other useful attacks might be to make the
    > objects:
    > 
    >   /root/.Xauthority
    >   /etc/ssh/ssh_host_dsa_key
    > 
    > world-readable; or make something (already owned by group tomcat8)
    > group-writable (some "policy" setting maybe?).

  * Privilege escalation when removing tomcat8 package
    https://bugs.debian.org/845385

    > Having installed tomcat8, the directory /etc/tomcat8/Catalina is
    > set writable by group tomcat8, as per the postinst script. Then
    > the tomcat8 user, in the situation envisaged in DSA-3670 and
    > DSA-3720, see also http://seclists.org/fulldisclosure/2016/Oct/4
    > could use something like commands
    >
    >  # touch /etc/tomcat8/Catalina/attack
    >  # chmod 2747 /etc/tomcat8/Catalina/attack
    >
    > to create a file.
    >
    > Then if the tomcat8 package is removed (purged?), the postrm
    > script runs 
    > 
    >  chown -Rhf root:root /etc/tomcat8/
    >
    > and that will leave the file world-writable, setgid root: 
    >
    > # ls -l /etc/tomcat8/Catalina/attack
    > -rwxr-Srwx 1 root root 0 Nov 23 09:00 /etc/tomcat8/Catalina/attack
    >
    > allowing "group root" access to the world.

Cheers,

--Seb

