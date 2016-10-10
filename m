X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1188" "Monday" "10" "October" "2016" "04:32:57" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzssdZ5k5H92mOKaLHE38Db0har=n4azHZeNosC-wsr55dw@mail.gmail.com>" "37" "[oss-security] CVE-2016-5425 - Apache Tomcat packaging on RedHat-based distros - Root Privilege Escalation (affecting CentOS, Fedora, OracleLinux, RedHat etc.)" nil nil nil "10" "2016101007:32:57" "[oss-security] CVE-2016-5425 - Apache Tomcat packaging on RedHat-based distros - Root Privilege Escalation (affecting CentOS, Fedora, OracleLinux, RedHat etc.)" (number mark "U       dawid@legalh Oct 10   37/1188  " thread-indent "\"[oss-security] CVE-2016-5425 - Apache Tomcat packaging on RedHat-based distros - Root Privilege Escalation (affecting CentOS, Fedora, OracleLinux, RedHat etc.)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3574 invoked by uid 550); 10 Oct 2016 07:53:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14256 invoked from network); 10 Oct 2016 07:33:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=B6C78yPjGZoDrqeul5VrQBrq5u8bZa32RtDafPsZ2lQ=;
        b=E9/8gJVfpOqZ0Vj1ALZwBvLW7MFneFhmPaXgEKfZqXuUtiwW/+iIGfsN2R+2JwwWNH
         hWHqzsqh0fODesEWchNBgtudeVuNISvlRdnEljG2BSREHDJzjdl4eYSlMsDqNAMBfdTi
         GnG7pE2b3o8mQkIkvQQYJxgK2Bx9qNswdjKRf45FAUwVMR7/QzO7bus5PYEGxHKQnVR+
         6VxRSuYdEOGZGb5o+MHyvxU4KEfjk0B6jYIIRkrD5uxuVpsotba0Q6aHXMACbQAgzpV+
         LGLOErwOoq0QuqMa4q3afZJa0MUul7O9Pq7id3LLH5aCjwGoShljrcytwP6hP7+QoCUZ
         +p4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=B6C78yPjGZoDrqeul5VrQBrq5u8bZa32RtDafPsZ2lQ=;
        b=FfwFASXj3Q5/8MXBcHXDXd9Z0vUYZHfdu0YRZftkYZBANDbV4CxmqD73yd1WTxn/NW
         DIal3Nep9hEdsK63fX5R0P7XWRt0RUZ7zjqFWT98hWftHg0b9wSczBHXLMkAQB97DR9V
         fTizzWa5PHk2wKubKAN6aLnQoIMA9P+VXf6i76geRAmHwIEs7rnbErgfQSgj/FE+Pl6v
         ST79v8n1lxv78I/uX780vtdzjLXHycg8v0FUy8anxOVOxooFy673TWg/aT0tUdZC4w7b
         m/wKshz1WOnghGroNWLb8icz/1X/kIzfwfoB3HOPQstpDUed3LB1Z4lHPKvyfmyjk0X3
         PVug==
X-Gm-Message-State: AA6/9RnbkwvvwJqNltmUm8rULzPYOX/HvWn83NHWfZmYCIopMe8v9KMjhcBzmnhWwQml2kEBnS8FzbzjMUdt+A==
X-Received: by 10.194.6.36 with SMTP id x4mr2866490wjx.175.1476084778289; Mon,
 10 Oct 2016 00:32:58 -0700 (PDT)
MIME-Version: 1.0
From: Dawid Golunski <dawid@legalhackers.com>
Date: Mon, 10 Oct 2016 04:32:57 -0300
Message-ID: <CADSYzssdZ5k5H92mOKaLHE38Db0har=n4azHZeNosC-wsr55dw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-5425 - Apache Tomcat packaging on RedHat-based distros -
 Root Privilege Escalation (affecting CentOS, Fedora, OracleLinux, RedHat etc.)

Vulnerability: Apache Tomcat packaging on RedHat-based distros

CVE-2016-5425

Discovered by:
Dawid Golunski (http://legalhackers.com)

Affected systems: Multiple Tomcat packages on RedHat-based systems
including: CentOS,Fedora,OracleLinux,RedHat etc.

Short Description:

Apache Tomcat packages provided by default repositories of RedHat-based
distributions (including CentOS, RedHat, OracleLinux, Fedora,  etc.)
create a tmpfiles.d configuration file with insecure permissions which
allow attackers who are able to write files with tomcat user permissions
(for example, through a vulnerability in web application hosted on Tomcat)
to escalate their privileges from tomcat user to root and fully compromise
the target system.

Full advisory and a working root privilege escalation exploit can be found
at:

http://legalhackers.com/advisories/Tomcat-RedHat-Pkgs-Root-PrivEsc-Exploit-CVE-2016-5425.html


BTW. If you are using Tomcat on a Debian-based distro,  you may want
to check out
my previous Tomcat advisory and exploit at:

http://legalhackers.com/advisories/Tomcat-DebPkgs-Root-Privilege-Escalation-Exploit-CVE-2016-1240.html


-- 
Regards,
Dawid Golunski
http://legalhackers.com
