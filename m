X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["519" "Friday" "18" "December" "2015" "22:17:32" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151218211732.GA20355@eldamar.local>" "16" "[oss-security] CVE request: Blueman: Privilege escalation in blueman dbus API" "^Cc:" nil nil "12" "2015121821:17:32" "[oss-security] CVE request: Blueman: Privilege escalation in blueman dbus API" (number mark "U       carnil@debia Dec 18   16/519   " thread-indent "\"[oss-security] CVE request: Blueman: Privilege escalation in blueman dbus API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5823 invoked by uid 550); 18 Dec 2015 21:17:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5791 invoked from network); 18 Dec 2015 21:17:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NSK0Lpj/d6GewXySDCC66SFwMSLmqdg85mZW7xvQOyI=;
        b=qjQk9BFCvIsnybzEPboEwA7fDbJjGQFWjMNrnBqS5Qhw1gprbQqXQdQO/Uvjgjt9dx
         0H/4eGEtVR1j9O+QjQMUBNU78BTB4k6C+ESnKXUHfEgeUAdIAk2jZRL5Gp7GbBHfN7i0
         byZSr+afLrEFzPAi36opNX2pQVo2J1iuTPdoDiq3ZJH0Ixn65rzIgQwp3cCVj+YW6GAB
         dtzlBwos2NEpRdTEdhI9/0uHiKP+MuqRsVriVtn93gVe6CT2RbuVopY0BVou+gSONKjK
         RXZWqSGcpicmkh1I7fJn+ZQOSwoH9PVI+vZbjYFYCgbVOwWd6B4au3Yk0B8Zz43EWLbk
         HGcg==
X-Received: by 10.28.49.3 with SMTP id x3mr5613496wmx.53.1450473453949;
        Fri, 18 Dec 2015 13:17:33 -0800 (PST)
Message-ID: <20151218211732.GA20355@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Fri, 18 Dec 2015 22:17:32 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE request: Blueman: Privilege escalation in blueman dbus API
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

There is a privilege escalation vulnerability in Blueman, a GTK+
Bluetooth Manager.

It was reported upstream in [0] and fixed via [1] (for 2.0-stable) and
[2] (for master).

 [0] https://github.com/blueman-project/blueman/issues/416
 [1] https://github.com/blueman-project/blueman/commit/a3845bbed5fdddf14daec436b7e74f62719a71c1 (2-0-stable)
 [2] https://github.com/blueman-project/blueman/commit/e3d249391654da3fefe08b5389c2030fff1b12ea (master)

Could you please assign a CVE for this issue?

Regards,
Salvatore
