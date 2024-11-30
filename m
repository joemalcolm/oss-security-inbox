Received: (qmail 15982 invoked by uid 550); 30 Nov 2024 10:24:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15958 invoked from network); 30 Nov 2024 10:24:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732962273; x=1733567073; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iMxYJUx67pzeoFXcfDxB8QDxd+O2AqQkjY/iiKTDX24=;
        b=RX0BbMba+JEQe73PdNqNG9lERo26/p1xV8s+YDALkiKntX7jag3VB7SgGttpNMJt2I
         jjMYJrepf5X/wtcamq2m6F0NXYp4JtOX28MEWckntFO1L3bHYRkkgWRisXDOwIjpNLlm
         qgW+cLf/RVJJZjacEkBBPBw/QTL7TV9btQh0Fkoyy+YIL5YFPy0UdLHMXJqVFe6e6IPm
         +iuXwhZx9gGPlD2Kg9p/J6swoo+i8HHut/Y1bloofeAvB2TUWgID8RZO5S93gCFeb6Bm
         u+PEs97YeEciFmT1eE347tEVaxe4gclfyjPrUCdmbfe2rBg+v6auA/ZzGqVgu7AckA5v
         hNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732962273; x=1733567073;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iMxYJUx67pzeoFXcfDxB8QDxd+O2AqQkjY/iiKTDX24=;
        b=UeKmk7webhfX7GeehxtG1HOjgd+FBLu9TzGqVHTD9nDJbCppc0qgROwMxDISgiAiPq
         Afh4MPDaoUvxMMDWTyI+6dLJfPtzc6TGS+cYZExhxAn9R1qAYxfunGT267v916AMzzi6
         tCpgb8sQWLnoiAifz11OnBSqeOH1hxkWCvFLZL+ieZ08AFDf6RsBPITMJ2mhl0jdRjdN
         VvOrKVSpjC8sIgij8lnlDfSsaf8X46MG4/IYhx9JwCXgFt1G+zyAD4oHuS/wueg2p7fW
         OF26+qw7HXyPTHr5KeRQtdq+eYp7U4TY2LVO8fy/1emr+VcvUnKfJfm0BFcFLEnlFFZE
         aB6Q==
X-Gm-Message-State: AOJu0YzDQ9EMtNXKKpvnlYCWm3n/fLmAZiEU9a1mPBfUeRJc6mhX8EEl
	wZlZ9sSraxQzeWGn3Eh6QLeDi7Fx2GN1u5Sg2gLRSA4Gk4t9PzWuqTP1yJqL
X-Gm-Gg: ASbGncuEpyvnjZQdLIzUb7PpJvybs18uvutK2MEGHRLgOHoPLnamgvSw3+AYlk8Yoks
	KQSR7577G4k9hAAQ4yggs4Z40lmAYbAUXkDE5MvCu2R51j5AoYwUo080FvBlrhGZ0gkZ5ESwkUL
	bla0b8XE4GuyhoKIr0HNDsndihboJmz7JfIOoNp/mXS9AgkShrfMIPsNHcR9o9Y4lk56x2ESxCo
	JkuJ32+O+Dz2ZoLUY86O9q8BHti+9xa7yeT6m1e1X+k3NKtwnP+mxe9/4IDFbF9ykSMU5uHHe3o
	UjSis2AJkA==
X-Google-Smtp-Source: AGHT+IGVryf7w6vcYZOyts/GfI6ZoMuTMjxyt5GfLmeHSnbHUQmfN7B50XMYt+cutqZymgjTCHL+7w==
X-Received: by 2002:a17:906:3ca2:b0:aa5:427e:6c76 with SMTP id a640c23a62f3a-aa580b2f6b3mr1142581066b.0.1732962272610;
        Sat, 30 Nov 2024 02:24:32 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 30 Nov 2024 11:24:29 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Z0rn3SWFSp5pHKb_@eldamar.lan>
References: <20241119162429.GA12472@localhost.localdomain>
 <Z0YwJvy28dKYSQ-3@aeon>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z0YwJvy28dKYSQ-3@aeon>
Subject: Re: [oss-security] Local Privilege Escalations in needrestart

Hi all,

On Tue, Nov 26, 2024 at 12:31:34PM -0800, Mark Esler wrote:
> The security fix for CVE-2024-48991, 6ce6136 (“core: prevent race
> condition on /proc/$PID/exec evaluation”) [0], introduced a regression
> which was subsequently fixed 42af5d3 ("core: fix regression of false
> positives for processes running in chroot or mountns (#317)") [1].
> 
> Many thanks to Ivan Kurnosov and Salvatore Bonaccorso for their review.
> 
> [0] https://github.com/liske/needrestart/commit/6ce6136cccc307c6b8a0f8cae12f9a22ac2aad59
> [1] https://github.com/liske/needrestart/commit/42af5d328901287a4f79d1f5861ac827a53fd56d

Please note there was an update for the final merged commit:
https://github.com/liske/needrestart/issues/317#issuecomment-2506806378
https://github.com/liske/needrestart/commit/e17b5644aff0f9eaeb422af7013b9c88ffc44423

Regards,
Salvatore
