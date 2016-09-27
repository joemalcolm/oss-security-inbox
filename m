X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Tuesday" "27" "September" "2016" "17:29:42" "+0530" "Reno Robert" "renorobert@gmail.com" "<CAH4rwTLQx21iUP5HSxwCRVRdOYMHjDH9roxhgWjJghHujr9toA@mail.gmail.com>" "31" "[oss-security] CVE Request - OpenSLP 2.0 Memory Corruption" "^Cc:" nil nil "9" "2016092711:59:42" "[oss-security] CVE Request - OpenSLP 2.0 Memory Corruption" (number mark "        renorobert@g Sep 27   31/841   " thread-indent "\"[oss-security] CVE Request - OpenSLP 2.0 Memory Corruption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23556 invoked by uid 550); 27 Sep 2016 13:20:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24283 invoked from network); 27 Sep 2016 11:59:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Aq/ZhJ96EKm53fz86BVKUEBQfosW1Jglgx+WEkDZImw=;
        b=RSVg3+xAxc2gwwZaC7YPNgHU7wDTZjkyiGfzqb+gk/uoKDy3I2JpNSrmgvz/tUPiMk
         yT261N/jgBKTf2rrsQ0ELb2w1GiybKRbl3tIkHD1O562nz0hkrWmerR7Ad8y10MqmXw/
         boN6RObR6TGrZaqDvnDwkeud8lH/y4Y4p1P2uMF6157SFSZ5CJzptbrVyBXFf5LhI4/O
         osU8Eia7lCMrIabKCuX+iGPR4/zzebgBD/bZJQVnG7kFgZzL+Dmj9b1mzfOGDQAesJdz
         B82gKwnjUs0SqtiqyStrDHoGNfMG9VRj9gp0fHuwnShS7dg002yYKxSy4lKKGvLTL1jD
         C7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Aq/ZhJ96EKm53fz86BVKUEBQfosW1Jglgx+WEkDZImw=;
        b=WlrCXZDYKS/zEg9e5M+KVzXsxOOyriaKtVhpvpMt7TV6mgDZF42Vjiq9AVmP2Q9wyO
         jFarOm6Y1zLaw85fB4WLLbxZeiQz7FoiENm+/S5W9D8tV4dhg/hOfVSXTOszQAesDgtC
         H6J88PYjJtTum/Q9No2uex9t6GR5S/gT6YYIlMqEAsvbVT1xsj4KWA6n+DJjkFrVnGY8
         ZnWLz3SgBDZGEiZz2gPFK61JTts+LBDQpPCxLbMJefs5uxEWEFKOf8MfSXC0aDVpnBUM
         7wi+YrCfduav5kHJNw5/4ckdmjkT4SNieL0+fCwfAEX/Jbnd4sQFtUlPNAUVBw/zAqjf
         7mXw==
X-Gm-Message-State: AA6/9RlAcRa/Y/Uv5Gpoh9lxZsMBqVYk2Rs0c52jBIy7ltdAfE81vm5C5DM7NXRt4HIubZuJ0Rt32yWqIFxwOA==
X-Received: by 10.176.4.36 with SMTP id 33mr2308987uav.18.1474977582585; Tue,
 27 Sep 2016 04:59:42 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH4rwTLQx21iUP5HSxwCRVRdOYMHjDH9roxhgWjJghHujr9toA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cve-assign@mitre.org
Date: Tue, 27 Sep 2016 17:29:42 +0530
From: Reno Robert <renorobert@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - OpenSLP 2.0 Memory Corruption
To: oss-security@lists.openwall.com

Hi,

The following commit fixes a memory corruption bug that I reported in OpenSLP:

https://sourceforge.net/p/openslp/mercurial/ci/34fb3aa5e6b4997fa21cb614e480de36da5dbc9a/

Below are the details of the issue:

static int SLPFoldWhiteSpace(size_t len, char * str)
{
      char * p = str, * ep = str + len;
      while (p < ep)
      {
            if (isspace(*p))
            {
                char * ws2p = ++p;
                while (isspace(*p))
                     p++;
                len -= p - ws2p;
                memmove(ws2p, p, ep - p);

The outer while loop checks for p < ep, but lack of bound check in
inner while loop could result in p > ep. This will result in passing a
very large 'size_t len' (ep - p) parameter for memmove().

Could you assign a CVE for this?

-- 
Regards,
Reno Robert
http://v0ids3curity.blogspot.in/
