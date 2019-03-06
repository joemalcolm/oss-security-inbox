X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["647" "Wednesday" "6" "March" "2019" "14:22:45" "-0800" "Neng Lu" "freeneng@gmail.com" "<CANwEksUQ7BUBm4gfK3Dew-_Mm1-nO=Dh4u1wwvZ7CV8VwP=Zvg@mail.gmail.com>" "30" "[oss-security] [CVE-2018-11789] Apache Incubator Heron file access vulnerability" "^Date:" nil nil "3" "2019030622:22:45" "[oss-security] [CVE-2018-11789] Apache Incubator Heron file access vulnerability" (number mark "        freeneng@gma Mar  6   30/647   " thread-indent "\"[oss-security] [CVE-2018-11789] Apache Incubator Heron file access vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20197 invoked by uid 550); 7 Mar 2019 09:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26175 invoked from network); 6 Mar 2019 22:23:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=ffESLRs7ZZJMQyi0uROjy2tmD4+GXDj1LIH4eu4dVYA=;
        b=quOTXzhsB0n0sOVHv0KSVEdN+TuicwJ1DgMIyMCZm+6waKq26xX/M7/GukGacRXrFc
         dmwUBipWs5mU7RwDb29SDf5jGWT4iRs8MMv5MVILw//Vi9OTaBU+Fp6aUquqqPeDX2/o
         N7lUe1hqnCso6HzJ2/ZFT6UwYlaPr13XpAYM12G0wkx1hH+iuyZSfhIOTLFGuzFlNMW1
         5CkPJ+Z9CXzz+QA2OaNKomI9akdhMTzMszdEIsuobTS4lDDPERoJNMWouZDzG2x7pHS4
         dEsKSo2KnKV8nqqazuHP1cnIrNUit0IfZIATKOICKcNbfX5Xy7p8oPGUkKX0bjY3Lb/i
         czZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=ffESLRs7ZZJMQyi0uROjy2tmD4+GXDj1LIH4eu4dVYA=;
        b=jDRsElWy1ZcLz7IdS+KkRIiy62umAi8LpLVfPgczdJL1DmGtm0NshMkOrZIJTzVXgs
         wizDjfwo1aWL0nUd9gz2uBoMNmsIbOLyU/3LHG8+e9eEa+xklWtfZ0GpGtRddBcdadQk
         dsypNVhqRhFNZwhCNY3SRQ0oZ4E2K6z2YNW6jQ4KJrMPDtBPTAa5843Prgpls+06UNqn
         I3fS7iDU+WMkUdCkQhp/jY4sZFuYL4ao+AO0FcoLuUPi/QLxtGt3QgKrLidNxiEJudiX
         XXDAyJ/zQys7BzyDbW84m671hAhgb9sDU0O62VsbdwMigBpWxOz7v3eSTagv7S6KSkJR
         fEYg==
X-Gm-Message-State: APjAAAWwyVpFXEqoYa9qYFyMPu8GdieniqPhw0/tQTYM3g8pcBfZ90CE
	IOy35knhQtROE0kVx7FSPh+pn5/zNWDi6r4HdUE24Q==
X-Google-Smtp-Source: APXvYqx25/9ZoEi+8R3e+46dCfAT93/k1nh1Q2Hk7yYuVrtXyM2zTp/ikoIxnZEkbDAFzTbYWfhu4RD1AIDidwNlWNc=
X-Received: by 2002:a2e:151:: with SMTP id 78mr3808769ljb.112.1551910976739;
 Wed, 06 Mar 2019 14:22:56 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CANwEksUQ7BUBm4gfK3Dew-_Mm1-nO=Dh4u1wwvZ7CV8VwP=Zvg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007ddc880583746eff"
Date: Wed, 6 Mar 2019 14:22:45 -0800
From: Neng Lu <freeneng@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2018-11789] Apache Incubator Heron file access vulnerability
To: windham.wong@stormeye.io, Apache Security Team <security@apache.org>, 
	oss-security@lists.openwall.com, general@incubator.apache.org, 
	dev@heron.apache.org, private@heron.apache.org

--0000000000007ddc880583746eff
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Heron 0.13.0 to 0.17.8

Description:
When accessing the heron-ui webpage, people can modify the file paths
outside of the current container to access any file on the host.

Mitigation:
All Heron users should upgrade to 0.20.0-incubating

Example:
modify the parameter path= to go to the directory you would like to view.
i.e. ..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd

Credit:
This issue was discovered by Windham Wong of stormeye.io

-- 
Best Regards,
Neng

--0000000000007ddc880583746eff--
