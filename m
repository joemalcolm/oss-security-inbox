X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Thursday" "13" "August" "2015" "11:06:10" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>" "33" "[oss-security] CVE request for saltstack" nil nil nil "8" "2015081317:06:10" "[oss-security] CVE request for saltstack" (number mark "        kseifried@re Aug 13   33/862   " thread-indent "\"[oss-security] CVE request for saltstack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32254 invoked by uid 550); 13 Aug 2015 17:06:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32226 invoked from network); 13 Aug 2015 17:06:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=mwcME8MG2Y2xDRRBCodoB8u9G6hspKD77jmDpQXo8Hk=;
        b=LwheQcFLA03KRhoUqwj8FmZDsbA0KfN4+tV3BJP3FXKN8t7YP0/CbsyoXAOdi/Njjd
         TbEEHskpHzutqLmTUSE2r96Nc2XmRoRpay+PDc1bq2vX64snA1ca+bWjyUJgdh7IgfZ8
         vbL0JpVxy6R6Tqb5XadZzV3ymP5hBMV1OEQQHEorBN4oKC4ltHHTmNrmNa9L91kpz1SS
         vkeoBOMEFPQn6DiMLg8JcbI68xojOBAJlgerPBwfc/c2CKVdIerCYrY7OT480eVtPOFs
         jdqTYpE1UoR+gvjPT5lmpKBVLYNHlHqz383l2bjLNA6R0nW34JPvDLCHRf8CyERwHox9
         JZBw==
X-Gm-Message-State: ALoCoQkmsGjlEV5dfBJjcnGHB/MVqdbNT61zOH7uu8tD8LQLe9gatuchVfDUhxaqECsze7zFU6PR
MIME-Version: 1.0
X-Received: by 10.129.103.5 with SMTP id b5mr21319292ywc.55.1439485570995;
 Thu, 13 Aug 2015 10:06:10 -0700 (PDT)
Message-ID: <CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11490c141e8f0a051d345aa3
Date: Thu, 13 Aug 2015 11:06:10 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for saltstack
To: oss-security <oss-security@lists.openwall.com>, security@saltstack.com

--001a11490c141e8f0a051d345aa3
Content-Type: text/plain; charset=UTF-8

So someone pointed this out to me:

https://github.com/saltstack/salt/commit/e8ce66cf688b43aeb3e716e78b1af3a08e9940e3

     priv = '{0}.pem'.format(base)
     pub = '{0}.pub'.format(base)

-    gen = RSA.gen_key(keysize, 1, callback=lambda x, y, z: None)
+    gen = RSA.gen_key(keysize, 65537, callback=lambda x, y, z: None)
     cumask = os.umask(191)
     gen.save_key(priv, None)
     os.umask(cumask)

This is using the M2Crypto.RSA.

TL;DR: doing RSA crypto with a public exponent value of "1" makes crypto
very fast. Fast is not always good.

Can we get a CVE for this please?



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11490c141e8f0a051d345aa3--
