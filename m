Received: (qmail 27660 invoked by uid 550); 20 Jun 2025 13:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26607 invoked from network); 20 Jun 2025 13:51:02 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-113S0075638fc1d-b0e6-4532-af59-ff1a11d8905f,
                    AA318F909AB52CDA134F90F032C2BF35D21C9541) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.177.249
Date: Fri, 20 Jun 2025 15:50:51 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20250620135051.xkt6yzanpy67jeqe@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAN1eSkue9p8=qkJdEFrczVwc1nfUhG7w6Z2dMHhxHc47T+sv=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAN1eSkue9p8=qkJdEFrczVwc1nfUhG7w6Z2dMHhxHc47T+sv=A@mail.gmail.com>
X-Ovh-Tracer-Id: 7438820685220818129
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdekheejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfffgffegieevveejtdduhedvfffgtdfhgefhleehfeeujeffudfgveetheffuefgnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepuddvjedrtddrtddruddpfedurddtrddujeejrddvgeelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheeffegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=hX0K/2DJsPw+d8toDQGLoGqd/cNrJ32Lh2Pfeb15rHs=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1750427453; v=1;
 b=T6UPmYHZfE2ydmjf7mTb57E8H0W8rEwoYRYA0PkdlhAoiV431mD9U71TXA0Vf+r+ZXofqmVe
 4QJ/KcTNgf6Us+7ieDuVdLURPmmcEaArDdLsZ12gcH80HHr2+rR+breGL8FQQufcg6ZZwGMht0t
 F+M7RVWcNZLbRvnnO3dVyEj2A4fYr9zNtQkHLPnmKj+RXINlsrdqLqpbNf7nbhZMd3SKcoi3SCG
 TmWBF7mif0Hx7oiurMuArhDOvzJ7/U8lUwcIgKLu1meKAksXxSJQFJnQ5nAukWyBVJYVhPgAVtK
 ePHKDP0E7GfF26Hu50K/0Lpv5XXaOWCYEtgFFXGWFVlFQ==
Subject: Re: [oss-security] path traversal in tar extract in intel
 cve-bin-tool

This is the committed fix:
https://github.com/intel/cve-bin-tool/commit/b4feb03f19acecc1

The fix is twofold:

1) If tarfile extraction filters are available (initially added in 
Python 3.12, but also backported to 3.11.4, 3.10.12, 3.9.17 and 3.8.17) 
in the standard library, the code makes use of that.

2) Otherwise, it tries to sanitize tar files on its own, like this:

     for tarmember in members:
         if tarmember.isfile() and str(
             Path(extraction_path, tarmember.name).resolve()
         ).startsWith(extraction_path):
             yield tarmember

This cleverly sidesteps path traversal by not extracting anything at 
all, because...

     AttributeError: 'str' object has no attribute 'startsWith'. Did you mean: 'startswith'?

But the custom filter wouldn't be sound even with the typo fixed, 
because str.startswith() and Path.resolve() are wrong tools for the job.


Anyway, I suspect that cve-bin-tool's extractors for other file formats 
are still vulnerable to path traversal, so I wouldn't recommend running 
it against untrusted files.

-- 
Jakub Wilk
