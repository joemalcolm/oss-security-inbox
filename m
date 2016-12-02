X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2174" "Friday" "2" "December" "2016" "11:43:08" "+0100" "=?utf-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20161202104308.GE4706@hz1>" "63" "[oss-security] CVE request: 2 issues in tomcat8 Debian packaging" nil nil nil "12" "2016120210:43:08" "[oss-security] CVE request: 2 issues in tomcat8 Debian packaging" (number mark "U       seb@debian.o Dec  2   63/2174  " thread-indent "\"[oss-security] CVE request: 2 issues in tomcat8 Debian packaging\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9723 invoked by uid 550); 2 Dec 2016 13:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14026 invoked from network); 2 Dec 2016 10:43:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AiSQaeHb/6E3sp6b18W3wRRq9BjOB5mp8jISO/y+fs4=;
        b=dI1D6FWSO2Z1GlCPKgiUwij+rJWgGsi5Npgria9iEOJfVYf/iWZg7OfUaPMHmP+hGc
         3ZLSrmelyE6fkDsVjWDYXLOspLsvEHeyctHG35W1iM5vCibCg+mmJS66hLMhk59Vg+y4
         p34o4MU1zzeTD4dMxGVUoA+DRUNRajXqsZyI3dvSRjiEfXD9KG7OghO+2VGVHtQhLhzh
         Cvej0N3AS96o2MX/uXewzypTyBfFT61ChCfImTSrLv6iYRHJxzohhMEJI1T6v/TwE+/V
         OaAKJDr13WYdonMfjzEvH/4et5NlBCNDSJSYqrwv8A4/v8eDZVRUgWjBeqqWzjFvhQHX
         ESiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=AiSQaeHb/6E3sp6b18W3wRRq9BjOB5mp8jISO/y+fs4=;
        b=YXS9v2jm/eTAJzHz5Vt5uOoOc4cRId5yYPX326UmzTY8nscMXNfMDe5TmB4EJ0ky/+
         /szXEPW1IKvc/fZ2lmKnP1Ny9mdMoO3JqSGAC0XlRrVS8P5WskIh1Qecw4jHNN02fiXd
         KI7QTPxK18PMc4rfC7RLdDsaW/7tmfqIMUQ7gfBuyktk2BzAGfkMJDFsidrt5bk90yK3
         pTGpNSRLr+tMATjb/dpXoedAumGFveRDH3uL6HiJ5IsPq1JTsx8ykzW3CIueC325g9yD
         nGrbJATDpuVGap+lkcpuVjZs5mRgy7MZvp40KvHUFhznjufIEHKpEdDHGO1UefIGrb6H
         xFEQ==
X-Gm-Message-State: AKaTC00YNv7jqcitwkWskQ2kzJAjD61o17ZRBapN2UPpMGlpaiBLnejCQG+7SfZX1F1E4w==
X-Received: by 10.28.29.86 with SMTP id d83mr2123591wmd.75.1480675390942;
        Fri, 02 Dec 2016 02:43:10 -0800 (PST)
Sender: =?UTF-8?Q?S=C3=A9bastien_Delafond?= <sdelafond@gmail.com>
Date: Fri, 2 Dec 2016 11:43:08 +0100
From: =?utf-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161202104308.GE4706@hz1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request: 2 issues in tomcat8 Debian packaging

Hello,

the Debian security team would like to requests 2 CVEs, for issues
discovered by Paul Szabo in the tomcat8 Debian packaging.

  * Privilege escalation when upgrading tomcat8 package
    https://bugs.debian.org/845393

    > Having installed tomcat8, the directory /etc/tomcat8/Catalina is
    > set writable by group tomcat8, as per the postinst script. Then
    > the tomcat8 user, in the situation envisaged in DSA-3670 and
    > DSA-3720, see also http://seclists.org/fulldisclosure/2016/Oct/4
    > could use something like commands
    > 
    >   mv /etc/tomcat8/Catalina/localhost /tmp/
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
    https://bugs.debian.org/845395    

    > Having installed tomcat8, the directory
    > /etc/tomcat8/Catalina is set writable by group tomcat8, as
    > per the postinst script. Then the tomcat8 user, in the
    > situation envisaged in DSA-3670 and DSA-3720, see also
    > http://seclists.org/fulldisclosure/2016/Oct/4
    > 
    > could use something like commands
    > 
    >   touch /etc/tomcat8/Catalina/attack
    >   chmod 2747 /etc/tomcat8/Catalina/attack
    > 
    > Then if the tomcat8 package is removed (purged?), the
    > postrm script runs
    > 
    >   chown -Rhf root:root /etc/tomcat8/
    > 
    > and that will leave the file world-writable, setgid root:
    > 
    >   # ls -l /etc/tomcat8/Catalina/attack
    >   -rwxr-Srwx 1 root root 0 Nov 23 09:00 /etc/tomcat8/Catalina/attack
    > 
    > allowing "group root" access to the world.

Cheers,

--Seb
