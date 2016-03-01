X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["908" "Tuesday" "1" "March" "2016" "10:33:17" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" "30" "[oss-security] CVE's for SSLv2 support" "^Date:" nil nil "3" "2016030117:33:17" "[oss-security] CVE's for SSLv2 support" (number mark "        kseifried@re Mar  1   30/908   " thread-indent "\"[oss-security] CVE's for SSLv2 support\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19720 invoked by uid 550); 1 Mar 2016 17:33:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19696 invoked from network); 1 Mar 2016 17:33:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=2t7TQ7i8mvISc9yG8WmYbFCGZPEbxJp/+aFW67icE2U=;
        b=bgCJN3H3uKtCKzr1tZyH54QNF0pin4uUU7EmIPTEEQon2x8znurZpcf9Co/NbrwFXa
         QmvNGLir+ZSELc9Cilulr+GomeEbiTCTV0l/eFonw/ixCoMaMJNE3rNycGogaOyuwDn1
         wbzr8yyaeJqBqiGGnZXpUrqBwGMoiEVwLmG9UQZSaY6zzSs0r/xD61ARJUiyfQr4DqEj
         CtwasTdcgAIoKxKE2m77vnOtLm6XLE5yFEWbVyMjjOSddZISNvrAO80Sne0qUMV4WbPQ
         VhQLgO4RgZXwKl4vtymG51+UMQ2wQN7X4w2/xPF+oIc5AR0pwHzuf+0HTJVxr9NFk+Hf
         F1Mw==
X-Gm-Message-State: AD7BkJJxgvjntQ058UobVB3LisK6E/kFhvseYDD2iivE6NCDEyPBhqBsVso+LajKnNMZDiGIh4ACEeqBnyhH8mAQ
MIME-Version: 1.0
X-Received: by 10.129.45.2 with SMTP id t2mr12440400ywt.182.1456853597246;
 Tue, 01 Mar 2016 09:33:17 -0800 (PST)
Message-ID: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11428d3e278f69052d0029f2
Date: Tue, 1 Mar 2016 10:33:17 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE's for SSLv2 support
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>

--001a11428d3e278f69052d0029f2
Content-Type: text/plain; charset=UTF-8

So there is this proposed RFC:

https://tools.ietf.org/html/rfc6176

TL;DR: SSLv2 needs to be shot.

Now we have yet another significant SSLv2 problem, DROWN, bad enough in
fact that Red Hat has now disabled SSLv2 in OpenSSL by default (already
done in NSS/GnuTLS), so from my vendor perspective, we're treating SSLv2
support as a security problem, the solution of which is to remove said
support.

But more generally, should we look at assigning CVE's for support of SSLv2,
much like we would for products supporting DES or other known insecure
cryptographic algorithms, hashes, digests and protocols? My personal vote
is for yes.





--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11428d3e278f69052d0029f2--
