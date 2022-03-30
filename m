X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["335" "Wednesday" "30" "March" "2022" "14:31:41" "-0400" "Jeffrey Walton" "noloader@gmail.com" nil "11" nil "^Date:" nil nil "3" nil nil (number mark "        noloader@gma Mar 30   11/335   " thread-indent "\"[oss-security] SpringShell and recent OpenJDK updates\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] SpringShell and recent OpenJDK updates" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17783 invoked by uid 550); 30 Mar 2022 18:54:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28125 invoked from network); 30 Mar 2022 18:32:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=WN/1UOztNjveCk1PwnBuOQKwlPJK/glvCwV4ATTreIk=;
        b=lDZksB9layLs17w7FVba9F54stRZiPu0uFW4L28OfJg4cyBxOVspVPS3DvY/n+iri/
         q4hm2gNYSi9vMbEzweGDBlfNd7lBM+vsTIPGstWhoIRFr7cGbKmbnDA0Zd0EOW/mLbjP
         PxuepaV+nbLDYdtH/7MP8tPAJbClkyHY/tNfGPE+H2td00LDMltYn8QvGMxpybE2L0EZ
         Qq5S7pqW39vN6VV80eeocbTquU7NWye25GVOhHfWy1ZGHPYxCeemh8OQCaZvQLk1FYCH
         wNFav0WGOLeNmRc7t9ZNyt8g2q80bm8iZgBNdyjPfA0ZJwlfu2O1PAphOirtcK+bgY40
         5uhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=WN/1UOztNjveCk1PwnBuOQKwlPJK/glvCwV4ATTreIk=;
        b=egww6AXvJRNHZNHVxlKj1yqpruFqKqZ9xHQII71x/cTiJRABCNgW7D7Q7GyOEpYji+
         LMj4XxlMbPrTFLJptGlRVVR7klpc8xK5sFNAhO1NL/RG9JpG6tzR4IV5/kRyx/G184kU
         DYXuR29MhBpxfR5zKMRQ07OMFeR+ZdZzJcJfrGVfbgHYK6rUwqWUApDSZs+zmDRU1410
         XU/5D9TdRhZhFeTeJ34lu52Nij/ShpDXtzuf8Uc9MmOXprDeRAvrvQqbjkPh9BrDKEq+
         hW61Na3tZb8WJ9h+Cy7ev78RRy3aGpwAG02Txz9YQWT0PAcjshR6jfRHCPhLER9XGiX1
         SmUg==
X-Gm-Message-State: AOAM531By3v4DyiJeY2CUSqk6ZkwYLrAqJDtcZlC7HWYibdCN9H62pSH
	8d53mFNf5P3Lx98ezjHdzpwLGO+zvh7CZZSxyZ9gnizHs7I=
X-Google-Smtp-Source: ABdhPJzHHFToz4VEQJay4fWTabn32isay6EIKvbbnTCZ4r6mLXl/ImFPYeE0ddZqUq4UmhT9C5D7yXIa01rYLtGUmZs=
X-Received: by 2002:a17:90a:380f:b0:1bd:4aa6:651 with SMTP id
 w15-20020a17090a380f00b001bd4aa60651mr881595pjb.83.1648665112697; Wed, 30 Mar
 2022 11:31:52 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH8yC8ngu__9q3C-pDGEAOnM=ZvuXt0m2V=BmJHH_bVa4CE1eQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 30 Mar 2022 14:31:41 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] SpringShell and recent OpenJDK updates
To: oss-security@lists.openwall.com

Hi Everyone,

I saw Ubuntu patched OpenJDK 11 recently. [1] Was that due to SpringShell? [2]

Or stepping back a bit, did the SpringShell folks work with distros?
Or did they really drop a 0-day?

[1] https://ubuntu.com/security/notices/USN-5313-2
[2] https://www.cyberkendra.com/2022/03/springshell-rce-0-day-vulnerability.html

Jeff
