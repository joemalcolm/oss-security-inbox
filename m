X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1022" "Monday" "25" "January" "2021" "09:55:55" "-0700" "ocket 8888" "ocket8888@gmail.com" "<CAMAKGdCR2E2ZiRT_Z6shTnhy5K7udJJdAgFBz3w-Fxs6AiWnuw@mail.gmail.com>" "34" "[oss-security] CVE-2020-17522: Traffic Control Mid Tier Cache Manipulation Attack" nil nil nil "1" "2021012516:55:55" "[oss-security] CVE-2020-17522: Traffic Control Mid Tier Cache Manipulation Attack" (number mark "U       ocket8888@gm Jan 25   34/1022  " thread-indent "\"[oss-security] CVE-2020-17522: Traffic Control Mid Tier Cache Manipulation Attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17522: Traffic Control Mid Tier Cache Manipulation Attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5949 invoked by uid 550); 25 Jan 2021 17:18:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30487 invoked from network); 25 Jan 2021 16:56:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Zt8nQP4BZJLBC2x921lrwc85ihhIevD34XNVu8N7rh4=;
        b=C0tcnvzV+ca9EoNQBchiIXzdOAOLCgXaTl6BJaSdPHtY5Usixla9l3L1csi8sQM3PX
         ufW9xSxooYCP50jSUyWPJdbmBQYQ+3kqVkihXKALlFIMTR3hZGoC9ojThJlHpeNP3goa
         ORLGcvkBBv30IXsotii/PU8Mfiup8SxJGPdpcuEH011jSS1tbNF3XohgAn/JF3elzvCs
         LzD9hVTwK0IHTqonegux03U1Jc9SlB9g8rhuihYny3TfYeANsr13C6ps5p9loY+OfpND
         /hIgtWvOJCI1uICUOMA8h+lRFqI7A/R5TRWXsSyC9fIJAWimGy3n5g58jDdjOUpOeGDR
         IZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Zt8nQP4BZJLBC2x921lrwc85ihhIevD34XNVu8N7rh4=;
        b=Xhc9s2MXDNS58wLhJLfQpHNSr/BughlYpb8f+j6lfUwxyr2j+2lvvF0NtYidD+ybxL
         8t7lnftG+6+Z152Yx0ik25bLBnmOBEgcLIOyrzi4fJYw3ii9sBeDJipo5WwznRyxxJrt
         R7swNvODyS06DmGDqwyxTFeWnWRLf2owlOPyHtaGuMJPMGeBXgdXbAbcF2fljhDZ0+2n
         n5huPubpSgL8DWMz3Kh94zRUvxdugX4DZ6sRlQFvVd+2ihHdiH5cFrwv9uRaa/sMDn7P
         jITJ39lBL8YfPGtYLzE7169oqXC9hTx5L07se7swm2uUP9WTxvLwLRr+djpEV3sv12jP
         J+Ag==
X-Gm-Message-State: AOAM532LicYu7uSnDn8wLdrXYS4R01Q4jq1iuo5a7uXjzbEYJYKDLUzq
	6rqyPmceiTEbiUoCIpfjHd1T/rq6N6JV3GtFz3++oAFGcrc=
X-Google-Smtp-Source: ABdhPJzSg3R0eEWfogHNp712h7tvrpUIAbPWjjWY7MzQeQnPM7H3kqO7Oh57c8NLSUCt+gYwx+omZ/gpvourEqRdbb4=
X-Received: by 2002:a2e:9c0b:: with SMTP id s11mr593766lji.348.1611593766643;
 Mon, 25 Jan 2021 08:56:06 -0800 (PST)
MIME-Version: 1.0
From: ocket 8888 <ocket8888@gmail.com>
Date: Mon, 25 Jan 2021 09:55:55 -0700
Message-ID: <CAMAKGdCR2E2ZiRT_Z6shTnhy5K7udJJdAgFBz3w-Fxs6AiWnuw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fbab5a05b9bc699e"
Subject: [oss-security] CVE-2020-17522: Traffic Control Mid Tier Cache Manipulation Attack

--000000000000fbab5a05b9bc699e
Content-Type: text/plain; charset="UTF-8"

 CVE-2020-17522: Mid Tier Cache Manipulation Attack

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Traffic Control 3.0.0 to 3.1.0
Traffic Control 4.0.0 to 4.1.0
The unsupported Traffic Control 3.x versions may be also affected

Description:
When ORT (now via atstccfg) generates ip_allow.config
files, those files include permissions that allow bad actors to push
arbitrary content into and remove arbitrary content from CDN cache servers.
Additionally, these permissions are potentially extended to IP addresses
outside the desired range, resulting in them being granted to clients
possibly outside the CDN arcitechture.

Mitigation:
3.x users should upgrade to 4.1.1, 5.0.0, or later versions
4.0.x and 4.1.0 users should upgrade to 4.1.1 or later versions

Credit:
This issue was discovered by Chris Lemmons of Comcast.

References:
https://trafficcontrol.apache.org/security/

--000000000000fbab5a05b9bc699e--
