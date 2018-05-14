X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["671" "Monday" "14" "May" "2018" "14:35:14" "-0700" "David Rientjes" "rientjes@google.com" "<alpine.DEB.2.21.1805141433390.31401@chino.kir.corp.google.com>" "17" "[oss-security] Re: CVE-2018-1000200 (Linux): Bad memory access on oom kill of large mlocked process" "^Date:" nil nil "5" "2018051421:35:14" "[oss-security] Re: CVE-2018-1000200 (Linux): Bad memory access on oom kill of large mlocked process" (number mark "U       rientjes@goo May 14   17/671   " thread-indent "\"[oss-security] Re: CVE-2018-1000200 (Linux): Bad memory access on oom kill of large mlocked process\"\n") "<alpine.DEB.2.21.1804241538200.28739@chino.kir.corp.google.com>" ("<alpine.DEB.2.21.1804241538200.28739@chino.kir.corp.google.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7507 invoked by uid 550); 14 May 2018 23:08:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15956 invoked from network); 14 May 2018 21:35:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:subject:in-reply-to:message-id:references:user-agent
         :mime-version;
        bh=CYJWcrpg9Sm6DQZ9R/PFlXew8vN6yceludN1Ak20ogs=;
        b=BmlBx8W1DLnQ7QBCHp22L9izxayeBU5Q0/vyqWj7//hrUN0jr5/73T7GqLfg2AY6ed
         0nB5hgONKFLw/whZ4A9RcCZgiL1IqLU/q+j83tpqpfvQVDGmeFBeUgt7vTITnP3+m6Qg
         rYo8Wx5Ra03yItcLDrf+CGkJPhx3UqmIIf7dPuajG3nf1GIPbluH6+CmS2IEo94p52TC
         0TizQHWAa9x147VQGATCJVQLuFB8ykC61OoEbxpNFTqMN22b7R02RzgEn2i8PiG3dw3w
         zW46ZdwMuuMTFbOPHSOAJdbmStMyXbUUynVXYcFDyDMyU6+aCUDn1GBCpYopkApIwsYi
         SKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=CYJWcrpg9Sm6DQZ9R/PFlXew8vN6yceludN1Ak20ogs=;
        b=JPtgUh2GMg/GPZ4O56yCW7nXgqXjUHdTtqGqh2n6bSlsmdnyT0eZ5hseGCfEkheO7l
         b8AFMdPAe7PeRtfZ0wzXiq3O7ogwoYvE76TpjsYvH28Ixccch8uPuRAjHIHRke5jFUEd
         rufgs38YKOzUY8SyyODDJIgdktIOdEpsOw+VbUjuXs/LeSl6sQM8JjwtX33o3ghF0afz
         knv16n2i+ldw+gO07UlR+Y+/VxozHS2Um9QpeGWLMEYjs5tFLg6zIr1fV9zCq1eDP3YZ
         cPprFkNMjTAz2UqFNcokfa/LF6IOd76k+FLA7t36pBchMzo3IIJ3arG2CYG12f1OMgAY
         oP5Q==
X-Gm-Message-State: ALKqPwe2OYd3GJGlfiKDJFyfyztG2Fsy4Lgsy9misctmyzYcXFesXqra
	EwBBfV2NNZ2pvr/HuQDvhuSRd/HZSZI=
X-Google-Smtp-Source: AB8JxZouCGRsTe60s9xc7FczvwhE8ZxmziRX1AAfUwC8CYcfpTm+obUm2QMdvM4Yv78IT0qU2Cpubg==
X-Received: by 2002:a62:f17:: with SMTP id x23-v6mr12165527pfi.3.1526333716074;
        Mon, 14 May 2018 14:35:16 -0700 (PDT)
X-X-Sender: rientjes@chino.kir.corp.google.com
In-Reply-To: <alpine.DEB.2.21.1804241538200.28739@chino.kir.corp.google.com>
Message-ID: <alpine.DEB.2.21.1805141433390.31401@chino.kir.corp.google.com>
References: <alpine.DEB.2.21.1804241538200.28739@chino.kir.corp.google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 14 May 2018 14:35:14 -0700 (PDT)
From: David Rientjes <rientjes@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2018-1000200 (Linux): Bad memory access on oom kill of large
 mlocked process
To: oss-security@lists.openwall.com

On Tue, 24 Apr 2018, David Rientjes wrote:

> Hi all,
> 
> Out of memory (oom) killing a process that has large spans of mlocked 
> memory can result in a bad memory access or a NULL pointer dereference due 
> to concurrent memory unmapping by the oom reaper kernel thread.
> 
> This affects Linux 4.14, 4.15, and 4.16.
> 

The fix for this has been merged into 4.17-rc5 as commit 27ae357fa82b 
("mm, oom: fix concurrent munlock and oom reaper unmap, v3"), see 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=27ae357fa82be5ab73b2ef8d39dcb8ca2563483a

Furthermore, it has been staged for inclusion in both the 4.14 and 4.16 
stable kernels.
