X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["793" "Tuesday" "24" "November" "2015" "12:57:11" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151124115711.GA22119@eldamar.local>" "21" "[oss-security] CVE Request: IPTables-Parse: Use of predictable names for temporary files" nil nil nil "11" "2015112411:57:11" "[oss-security] CVE Request: IPTables-Parse: Use of predictable names for temporary files" (number mark "U       carnil@debia Nov 24   21/793   " thread-indent "\"[oss-security] CVE Request: IPTables-Parse: Use of predictable names for temporary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17574 invoked by uid 550); 24 Nov 2015 11:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17538 invoked from network); 24 Nov 2015 11:57:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:content-transfer-encoding:user-agent;
        bh=y7jhg6usNuNz5J7j2KVkwccTyWUQofVtl34+Rwp3FUw=;
        b=uH7wtE6fz6/vLPucQgZGohAZHAtl3cdN0LguhGixzdsA/lyCXJctw5x9xMAY9HBQrn
         2x5P0KZjQf04A9bgugxIdYi+c+XPTiAE/gKJ1I/Y35Ky2PqkcuDXB9Td4RJbQwuWq04d
         lSRJQfiRl6LE40tdnJWtVMPGKtAUFo/vN2aXsRrM3YGRI86Jcr+a+0Y2s0Th7vWF5Y/L
         rbPMP0niii8xaRLJJZgpdF563jnbvCjvdOxOvD70wNNE6Mxe3X2Oi4SOxE3FBJMmdYHe
         CXNVD4KLffY/NBIaaM1qBKjLuxRu4f+SMlTLsr9EeGKN1NtUYQRPtNWm7HduxQiqOSqP
         UJdQ==
X-Received: by 10.28.142.83 with SMTP id q80mr5808993wmd.66.1448366234232;
        Tue, 24 Nov 2015 03:57:14 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 24 Nov 2015 12:57:11 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20151124115711.GA22119@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: IPTables-Parse: Use of predictable names for temporary
 files

Hi

IPTables-Parse up to 1.6 used temporary files in insecure way, since
it used predictable filenames. This issue was fixed in 1.6 with the
following commit:

https://github.com/mtrmac/IPTables-Parse/commit/b400b976d81140f6971132e94eb7657b5b0a2b87

Upstream Changelog:
https://metacpan.org/source/MRASH/IPTables-Parse-1.6/Changes
> (Miloslav Trmač) Fixed a vulnerability to not use predictable names
> for temporary files. This vulnerability would allow an attacker on a
> multi- user system to set up symlinks to overwrite any file the
> current user has write access to. If a user manually overrides the
> temporary file locations with the 'iptout' and 'ipterr' hash keys,
> it is recommended to not use predictable names either.

Can a CVE be assigned for this issue?

Regards,
Salvatore
