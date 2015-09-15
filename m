X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["621" "Tuesday" "15" "September" "2015" "17:33:55" "+0200" "FEIST Josselin" "josselin.feist@gmail.com" "<55F83A63.3040208@gmail.com>" "22" "[oss-security] CVE Request : Use-after-free in openjpeg" nil nil nil "9" "2015091515:33:55" "[oss-security] CVE Request : Use-after-free in openjpeg" (number mark "        josselin.fei Sep 15   22/621   " thread-indent "\"[oss-security] CVE Request : Use-after-free in openjpeg\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7379 invoked by uid 550); 15 Sep 2015 15:34:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7361 invoked from network); 15 Sep 2015 15:34:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-type;
        bh=2E3fmB1UhqQzm0otcH0rVX0dVPa/uX6qW/AIvewudQU=;
        b=pBHuV1mH8CnqN8XjWL791DUrSqI0vHvjq2iW8o/bk0oo66rWbdA0zPU0LSyppFRD0v
         /YFJ9BiOnNFrl7C0WtxrD1Wcw36zFrr0PUKRgDlGL4qS9RyGSswP22fskiAHp2tbUEDS
         Q20NCucaCiFFn1qwjRpRiGUQAj1HPyk4fbzxhc5NahNoOcxqWWpiJhvkw4koe5samsfx
         yOAl7m6epSU3hdVBW6iYzeWP4e8pJLiLMQkWDMHeS60wo9gxD8S5R3un0TP3TXmwda7C
         GSlpZaRAjhtosZFnJWhSFsnhkUwKQo0D7Q3ISbe1MRb0S49+Bpx094E/Zsc6MubkgV5C
         /9oA==
X-Received: by 10.194.104.200 with SMTP id gg8mr42405850wjb.144.1442331237510;
        Tue, 15 Sep 2015 08:33:57 -0700 (PDT)
Message-ID: <55F83A63.3040208@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------060201040007080901070804"
Date: Tue, 15 Sep 2015 17:33:55 +0200
From: FEIST Josselin <josselin.feist@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request : Use-after-free in openjpeg
To: oss-security@lists.openwall.com

--------------060201040007080901070804
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Use-after-free was found in openjpeg
(https://github.com/uclouvain/openjpeg). The vuln is fixed in version
2.1.1 and was located in opj_j2k_write_mco function. More details are
available here : https://github.com/uclouvain/openjpeg/issues/563.
Is it possible to get a CVE for this ?

Credit goes to the static analyzer Gueb.

Best regards,
Feist Josselin
/
//Timeline ://
//14 August : use-after-free found and reported  //
//6 September : use-after-free fixed/

--------------060201040007080901070804--
