X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2763" "Sunday" "22" "October" "2017" "16:35:59" "+0200" "Ailin Nemui" "ailin.nemui@gmail.com" "<1508682959.3197.1.camel@gmail.com>" "103" "[oss-security] Irssi 1.0.5: CVE-2017-15228, CVE-2017-15227, CVE-2017-15721, CVE-2017-15722, CVE-2017-15723" nil nil nil "10" "2017102214:35:59" "[oss-security] Irssi 1.0.5: CVE-2017-15228, CVE-2017-15227, CVE-2017-15721, CVE-2017-15722, CVE-2017-15723" (number mark "U       ailin.nemui@ Oct 22  103/2763  " thread-indent "\"[oss-security] Irssi 1.0.5: CVE-2017-15228, CVE-2017-15227, CVE-2017-15721, CVE-2017-15722, CVE-2017-15723\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20395 invoked by uid 550); 22 Oct 2017 14:47:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3616 invoked from network); 22 Oct 2017 14:36:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=DS6LAxOrh1iXxzvLNhenZ7mIGrI3jNyRX+5s+tFDJ1Q=;
        b=tU/L4rj5I2ICLSF/BBxdFBcqLPoJUVn68YPJYbZPnRfiHo8Vwk8c7ifpJTIUw1VN56
         GgCT6FS/OZgFUBbWjC7JoZ1coKpFaqbPONqzxZB+HH/fS3gQTRTFlIjKso3wFQZgienq
         RIexFBAi5OC4qDObPtn696rc3ptPMiCvxZtOsLeHce5KCwI2/7gjs1blLw2dFzoYp8HR
         LRZaXt7DY2008Stcb0cIDTgmNZaRCWFnrK+ak2EWh+jD5vfB5fVqPEceZIAGYsKTdKD5
         go9qnXERbD9KRm+e/GNo/kd+f2XIr3B/5ev2LBOYWgImc6a8zT8y06fgnSPKgcUU+6ht
         pTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=DS6LAxOrh1iXxzvLNhenZ7mIGrI3jNyRX+5s+tFDJ1Q=;
        b=grLugCKiMXiQfmfShS4Sc54BYNX9aDc6XIEgVu1VgpL9UYIEgbWDmVlUZqDR1N3H6v
         wehMWWKIfMEdi04t4XreaiLUGqehM22CzDsJt0hOG5KATPLrAc6D3gYu+ActlVmAXOPo
         BhBNtL2wx20nXNwpa0BqEnsEF/zBeQ3eaHSEiWI39hSfDQnCBkYri9mFvnPyK5u3YKBE
         5PoWb8AnvpZKGA1hITZ8E5S2ksKEZ737mMAw9Mnmy+A3Su8MUabKhouz1ByWEu+DKvEc
         1LNL4U6v33tthTVc+euOx5mZoCpvxVmz/WTdJ2B5co8pykvTlflpx2iO+D5KnnEwcoPr
         OEDQ==
X-Gm-Message-State: AMCzsaXSvJRcSLVuDMhL6j3pYssG1MO7ZPCtjhr0B86szAlqLL8ftIbM
	jTo6PTPq5YqhOkJtg/rvOUmA0g==
X-Google-Smtp-Source: ABhQp+QRQxjvUzFfvOWPyFcPOOaqfk1wbvp96y+Psqa1IdiLOCsZjznsS2tbBifDPRljSNIxd2+o0g==
X-Received: by 10.223.195.110 with SMTP id e43mr8599753wrg.219.1508682962825;
        Sun, 22 Oct 2017 07:36:02 -0700 (PDT)
Message-ID: <1508682959.3197.1.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Sun, 22 Oct 2017 16:35:59 +0200
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.0 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Irssi 1.0.5: CVE-2017-15228, CVE-2017-15227, CVE-2017-15721,
 CVE-2017-15722, CVE-2017-15723

> Irssi 1.0.5 has been released. This release fixes a few security 
> issues in Irssi as well as a few bugs. There are no new features. 
> All Irssi users should upgrade to this version. See the NEWS for 
> details.

> Most issues have been identified using fuzzing, thanks to Hanno Böck 
> and Joseph Bisch. We expect Joseph will be able to tell you more 
> about his newest fuzzer at freenode.live on the weekend!

IRSSI-SA-2017-10 Irssi Security Advisory [1]
============================================
CVE-2017-15228, CVE-2017-15227, CVE-2017-15721, CVE-2017-15723,
CVE-2017-15722

Description
-----------

Multiple vulnerabilities have been located in Irssi.

(a) When installing themes with unterminated colour formatting
    sequences, Irssi may access data beyond the end of the
    string. (CWE-126) Found by Hanno Böck.

    CVE-2017-15228 was assigned to this issue.

(b) While waiting for the channel synchronisation, Irssi may
    incorrectly fail to remove destroyed channels from the query list,
    resulting in use after free conditions when updating the state
    later on. Found by Joseph Bisch. (CWE-416 caused by CWE-672)

    CVE-2017-15227 was assigned to this issue.

(c) Certain incorrectly formatted DCC CTCP messages could cause NULL
    pointer dereference. Found by Joseph Bisch. This is a separate,
    but similar issue to CVE-2017-9468. (CWE-690)

    CVE-2017-15721 was assigned to this issue.

(d) Overlong nicks or targets may result in a NULL pointer dereference
    while splitting the message. Found by Joseph Bisch. (CWE-690)

    CVE-2017-15723 was assigned to this issue.

(e) In certain cases Irssi may fail to verify that a Safe channel ID
    is long enough, causing reads beyond the end of the string. Found
    by Joseph Bisch. (CWE-126)

    CVE-2017-15722 was assigned to this issue.


Impact
------

(a,b,c,d) May result in denial of service (remote crash).

(e) May affect the stability of Irssi.


Affected versions
-----------------

(a,b,c,e) All Irssi versions that we observed.

(d) Starting from 0.8.17.


Fixed in
--------

Irssi 1.0.5


Recommended action
------------------

Upgrade to Irssi 1.0.5. Irssi 1.0.5 is a maintenance release in the
1.0 series, without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


Mitigating facts
----------------

(a) requires user to install malicious or broken theme file

(b,c,e) requires a broken ircd or control over the ircd

(d) irc servers typically have length limits in place


Patch
-----

https://github.com/irssi/irssi/commit/43e44d553d44e313003cee87e6ea5e24d68b84a1


References
----------

[1] https://irssi.org/security/irssi_sa_2017_10.txt
