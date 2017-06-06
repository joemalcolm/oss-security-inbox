X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1203" "Monday" "5" "June" "2017" "21:32:11" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mSj_StFpa8P3kAVAd+cUrQXqcOpLibd9cX2rON1LMzSw@mail.gmail.com>" "30" "[oss-security] Crypto++ and invalid read in decompressor class" "^Date:" nil nil "6" "2017060601:32:11" "[oss-security] Crypto++ and invalid read in decompressor class" (number mark "        noloader@gma Jun  5   30/1203  " thread-indent "\"[oss-security] Crypto++ and invalid read in decompressor class\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6119 invoked by uid 550); 6 Jun 2017 07:11:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20025 invoked from network); 6 Jun 2017 01:32:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=IS/c4y/0E5tzlOFR1ekbW5QEwABekMGI/dFRD4mqpjw=;
        b=SpCPYiirZAqEE8p6ppEN+wLt8ryekqvOw/yejDG3eOQGUjVqVrQBaD9s5n6Kmt7KA0
         UmFTgOQb+P+lufTf/cv7IIRMzD9tRAKrWoh+EtT92e02ncFSsQMgeRtEvTHWgFMOj81B
         CSQEPJUUKSp4/4PthGgC0PiWOrRRowRhBOorEL5sYcimna5JEA8rlmhSUMQZhsc+LvFU
         XSPyiT7oGej4FLtpr4TjggN3+HjeXZ0JiZGQk5SybX/ol987jptLgtWQGraydCpLzCNG
         6nNj2Cxxizxx7ZdJ8zMlAQZw5d08MPPk6m+2+zuCzuvHpGznXSSTxdjN+MJ/xm0GrhL3
         NCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=IS/c4y/0E5tzlOFR1ekbW5QEwABekMGI/dFRD4mqpjw=;
        b=ITeEYktA1YvNSuO6xRPBq/00VnKebD8FNcFBwlEcCkKdSiTO2d0t3s26Rsdi5FlpEu
         aDREuswQGHfAmp09TqUj4fq5Is8WPYp7ljBCrpNCEbuRlXLthdV5/JgjHSgpKLirKjqv
         XMg7yEVpMowFXjJVqC6Z7VRSzwTYIbTjU3k2OgoG9FHr7Pk5naOS1fFtWAYfiSRdDhv8
         k9CEurCCpcUm+cm2xr66gQFfo0o/xNNciyLOPPj3zsU+SIdTQQLiBeZNtzSRaTcLpWtk
         ppN3oBcetnQoBbeqCMUXf1+XrQ7s9LRaGO0Uj8KhQUvRCdFdcLcDPzfqnNAMoSSzMRFz
         S+6A==
X-Gm-Message-State: AODbwcA/zNGGIeDKfqOssP07ZruqgEJjTldRhjW1mDW1ISmdGU4pe850
	W/5/f50oierPGq+Xdp3UOCWNygJzkvAxCQE=
X-Received: by 10.202.217.4 with SMTP id q4mr11238318oig.87.1496712732058;
 Mon, 05 Jun 2017 18:32:12 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH8yC8mSj_StFpa8P3kAVAd+cUrQXqcOpLibd9cX2rON1LMzSw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 5 Jun 2017 21:32:11 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Crypto++ and invalid read in decompressor class
To: oss-security@lists.openwall.com

Hi Everyone,

Crypto++'s (https://www.cryptopp.com/) is a free and open source
library of cryptographic schemes originally written by Wei Dai. Smart
fuzzing revealed Crypto++'s Zinflate class, used by classes like
Gunzip and Inflator, could perform an out-of-bounds read when
decompressing data.

The out-of-bounds read occurs on a table with 30 elements. The table
is static and its storage is allocated in initialized memory. The
attacker can craft a ZIP file that allows a read of the last two
non-existent elements. We believe an attacker can only read 0-bytes
due to the storage allocation. We were not able to escalate it to a
write. We believe its a low risk finding.

We were not able to induce failures in other classes using the
techniques. Other classes include those that are related, like
compressors; and those which are unrelated, like public and private
keys.

The issue is being tracked by the library at
https://github.com/weidai11/cryptopp/issues/414. The Gentoo folks
assigned CVE-2017-9434 to track the issue.

The fix is available in Master. It is also available for several
versions of the library at
https://github.com/weidai11/cryptopp/issues/414#issuecomment-300671740
.

Jeff
