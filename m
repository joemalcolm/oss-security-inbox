X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["561" "Tuesday" "11" "August" "2015" "17:33:59" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2Ds54oOBLOoPVXPAqt20JShR9=ckh_Mq-yHo=AuvR75A@mail.gmail.com>" "22" "[oss-security] Processor side channels using out of order execution" nil nil nil "8" "2015081123:33:59" "[oss-security] Processor side channels using out of order execution" (number mark "        kseifried@re Aug 11   22/561   " thread-indent "\"[oss-security] Processor side channels using out of order execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5124 invoked by uid 550); 11 Aug 2015 23:34:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4082 invoked from network); 11 Aug 2015 23:34:11 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=Rw20PcdVCM5uaw89SY+fqfsj/qDhsOmocr/jZR7RNMs=;
        b=gzHAK2NbQXe5a53k1dGhvRuhetWQqp3oJZW5TO36GuKw35kwv1l9RRwbMpSpJkyEcK
         LSdCGCAZuxMRmeMGyyAtNqUrTYYywCET89c+TZMaa5EyiFNFcO4bs5jYCTPlXQwI31Vb
         dY2Br5mfnSlOxXlUG9vLRu2oSWakSQvaGR5QxYx6jv9me2KL0ku2z2XZUn9W2oQWp8yo
         ri2eQav4jlnE0k5Mb+8SL5FUWe3unPbSuh9wuWR7XkW6Oq9qxqO8D1/IICfoMCkCr+in
         djM4uHxiqFSwr48szJEhdNX64SwrnpnrjbygO18Na/+e/ajID25F/whNi3S47Z3FTb79
         HSBw==
X-Gm-Message-State: ALoCoQkRdVnyRF2SgdBL3IfsJNJpLORvjLm9lx/7XzRPePSi+MQvmoxvRqeEQcWMT9RHS7T9pEYn
MIME-Version: 1.0
X-Received: by 10.129.103.5 with SMTP id b5mr11805709ywc.55.1439336039803;
 Tue, 11 Aug 2015 16:33:59 -0700 (PDT)
Message-ID: <CANO=Ty2Ds54oOBLOoPVXPAqt20JShR9=ckh_Mq-yHo=AuvR75A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11490c145da1fe051d1189ac
Date: Tue, 11 Aug 2015 17:33:59 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Processor side channels using out of order execution
To: oss-security <oss-security@lists.openwall.com>

--001a11490c145da1fe051d1189ac
Content-Type: text/plain; charset=UTF-8

Some interesting work in line with that CAIN thing from last week:

https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cloud/
http://sophia.re/cache.pdf
http://sophia.re/RECON/

not sure if this needs a CVE or not, since CAIN got one I'm thinking a
strong maybe?



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11490c145da1fe051d1189ac--
