X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1591" "Monday" "18" "January" "2016" "11:17:53" "+0200" "Paris Zoumpouloglou" "pariszoump@gmail.com" "<569CADC1.7000407@gmail.com>" "51" "[oss-security] Buffer Overflow in lha compression utility" nil nil nil "1" "2016011809:17:53" "[oss-security] Buffer Overflow in lha compression utility" (number mark "U       pariszoump@g Jan 18   51/1591  " thread-indent "\"[oss-security] Buffer Overflow in lha compression utility\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3129 invoked by uid 550); 18 Jan 2016 11:24:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3795 invoked from network); 18 Jan 2016 09:18:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-type:content-transfer-encoding;
        bh=Aa6GoxR9Tn04I4Ck0fc0inzywZ0RAPNlm01vKlAbdnM=;
        b=j5zjdQ2xT/ahk/I88BFtxporhxl+Hm1NIj7PvJ+rzTa74Vxg0cJFVvCYZ4EnaPNNyE
         0fmYTmdan04eCdZqpgUWRcykm/Y6HTjza3QclOBfOlY/8V5FEookJnt1GWUGmNPRyx5e
         aZNqsGbK9S/xaM0U+3mxbL7e9NpOKxd/nMVw2lIldJs2GmWWTVKuDnawKykkx5k/dOHj
         eCGfdF206qoje+lCarEhjFcH6m3JvBSCZfbM1vJG2JPvS00n4aXJMJI79gsRBzL80MX7
         tIZp0Pcpe6EnVhpNP1nYNFoS1S5uix/WbFvPLjWr669m2SX74RjtG+DCgOhqGFI4HLg6
         BHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-type:content-transfer-encoding;
        bh=Aa6GoxR9Tn04I4Ck0fc0inzywZ0RAPNlm01vKlAbdnM=;
        b=JdjAcdzVpDGGwriKGFqYdJirEPDbHWC/sBC2nvbKalj5+Aj7ksEdhhPf1gcHYcJPc8
         ZKbG/WT/85RQQDyr5G7HRunvBpWpRrtK76GZ3B4YDw5b6dAv9No4hz0TNbkf5JocPHTV
         TwxPFDuoqFRJU78xYCweXqa8/cY6/VCBzLmiETVDNN/lOkCWj5hynV9eEejUTQd6dQ09
         aiAGRDC27EDK5PdOS3ur1zZm71p6aaMY+5Pp9SpbuN9kuE6aUTS2CgLrshvYwvktVbnd
         9u7C3cqk5PdDc47rm6Is5s4mGg6pY0gq09PsyEVFKRyvtGNzI3k7yPle7taEKfyc8BJD
         JehA==
X-Gm-Message-State: AG10YOTi8kMVJ/AXNscxmNl1/HYvSYUATZfu5I7C97Xaa9eYYvey4RV1KR1n0wJF6LxnKA==
X-Received: by 10.28.8.142 with SMTP id 136mr12665373wmi.54.1453108674969;
        Mon, 18 Jan 2016 01:17:54 -0800 (PST)
To: oss-security@lists.openwall.com
From: Paris Zoumpouloglou <pariszoump@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <569CADC1.7000407@gmail.com>
Date: Mon, 18 Jan 2016 11:17:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Buffer Overflow in lha compression utility

== Overview ==
LHA for UNIX (https://osdn.jp/projects/lha/) is an open source
implementation of the LHA compression utility and associated file format.

== Version ==
All tests were performed using the latest 20b6ba8 commit of the master
branch from https://osdn.jp/projects/lha/scm/git/lha/

== Details ==
Using the afl fuzzer, two cases which triggered a buffer overflow where
discovered. The problem existed in header.c:797-800 and header.c:913-916
while parsing level0 and level1 headers accordingly.

=797-800=

    hdr->header_size = header_size = get_byte();
    checksum = get_byte();

    if (fread(data + COMMON_HEADER_SIZE,
              header_size + 2 - COMMON_HEADER_SIZE, 1, fp) == 0) {
        error("Invalid header (LHarc file ?)");
        return FALSE;   /* finish */
    }

=913-916=

    hdr->header_size = header_size = get_byte();
    checksum = get_byte();

    if (fread(data + COMMON_HEADER_SIZE,
              header_size + 2 - COMMON_HEADER_SIZE, 1, fp) == 0) {
        error("Invalid header (LHarc file ?)");
        return FALSE;   /* finish */
    }


The header_size variable is determined from the first byte of the lha
archive header, which is read by the get_byte function. The returned
value is used in:

header_size + 2 - COMMON_HEADER_SIZE

to determine the elements' size used in fread() .

If the header_size is less than abs(2 - COMMON_HEADER_SIZE) = abs(2 -
21) = 19 then the size parameter is overflowed and a buffer overflow
occurs in fread.

== Timeline ==
2016-01-13 - Bug report submitted
2016-01-16 - Bug fix pushed to master (commit bf2471f)
