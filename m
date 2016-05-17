X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["773" "Tuesday" "17" "May" "2016" "11:07:16" "-0700" "Molly Crowther" "mcrowther@pivotal.io" "<8D5AEF62-B15D-423E-BCC7-D08C75E9E361@pivotal.io>" "21" "[oss-security] CVE-2016-3091 Diego log encoding vulnerability" nil nil nil "5" "2016051718:07:16" "[oss-security] CVE-2016-3091 Diego log encoding vulnerability" (number mark "U       mcrowther@pi May 17   21/773   " thread-indent "\"[oss-security] CVE-2016-3091 Diego log encoding vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11959 invoked by uid 550); 17 May 2016 18:08:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11615 invoked from network); 17 May 2016 18:07:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pivotal-io.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:subject:message-id:date:to
         :mime-version;
        bh=dSVw5mUFDutxSWEBWrjBoZaoUZpTxXmhrka43P/BK3Y=;
        b=adT79ffjGs/yCST0Zu91Fuz+rOAVugfdlH9w7+MODSXLz1u87w0JlRy4+DR8sAZIi6
         lp8Rwwrl3ww1SMrD4ys2rqL/aApxVyW74Go1y3jRXDTAYE1elk0Kt50S5V8G25iPGUXR
         wgiFoZrcKDbNvqXWGbJrCcfaP8skBUPX0ndoeMGnSnrhzXb7QPeLTiACNEGPkbs5uMoV
         o4mhiN5EGxeRMGudAoJKV3hLN7L1MAtNEG5M2ILvdwD2PGbQuXSzf54wDnGGokKlx03k
         OV4aWxIWBCYn2msmBKm1qlsSkiOm7ULUM/K9LgbBTUMlWAIlNaV//7w4l6KEdAvoULUJ
         XAYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:subject
         :message-id:date:to:mime-version;
        bh=dSVw5mUFDutxSWEBWrjBoZaoUZpTxXmhrka43P/BK3Y=;
        b=YIDevYxFYItibmhbHlm0PUwoO3PzZ/5EOqt8eopobO/a50+7JyEeNReXX0rtC7o02s
         +nxe3Au701Yfs1BC1siQG8Rjp87jRwSMll97RpJMt/j7ABkOTUGZ77y6drde9ghi7C6F
         DzUWGXwLVd6cEfFw0RWmUTTzWD+zH7wcE7bYVa20C04SmCaqy4KHkDuJqLJImrll8UbH
         k315AxRHKoEUFV0xkc4K/uVgvAUdtjHG1GAw/TPJIb71XLZi6/5NoyOuVAasTRy/ot3r
         RLVWslzEa0A5oFvhsCFLhb2yzdHWjTldoxsG0dElFqRk/fCcVV30kVrwOVuspKUsuFkl
         yfmA==
X-Gm-Message-State: AOPr4FU5+HR+F8Imi3gv5oHEsgIXV+w3MFdIH+CN9evc825gpQMhvcG9n05aFIMcL9KyTux7
X-Received: by 10.66.234.131 with SMTP id ue3mr4066822pac.120.1463508438294;
        Tue, 17 May 2016 11:07:18 -0700 (PDT)
From: Molly Crowther <mcrowther@pivotal.io>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <8D5AEF62-B15D-423E-BCC7-D08C75E9E361@pivotal.io>
Date: Tue, 17 May 2016 11:07:16 -0700
To: oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] CVE-2016-3091 Diego log encoding vulnerability

Title: CVE-2016-3091 Diego log encoding vulnerability

Severity: High

Vendor: Cloud Foundry Foundation

Versions Affected: Diego-release versions 0.1468.0 through 0.1470.0

Description: Due to how Diego handles breaking up large log streams on UTF-=
8 boundaries, it is possible to cause a denial of service on a Cloud Foundr=
y installation with an app outputting malformed UTF-8 sequences.

Affected Cloud Foundry Products and Versions: Diego-release versions 0.1468=
.0 through 0.1470.0

Mitigation: The Cloud Foundry project recommends that Cloud Foundry Deploym=
ents running Diego versions 0.1468.0 through 0.1470.0 upgrade to Diego vers=
ion 0.1471.0.

Credit: This issue was identified by a Pivotal team and reported responsibl=
y to the Cloud Foundry Foundation.
