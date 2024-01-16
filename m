Received: (qmail 15400 invoked by uid 550); 16 Jan 2024 21:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15382 invoked from network); 16 Jan 2024 21:11:20 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-109S003386df929-15f4-4e88-956b-5c865426ce1a,
                    1BC7C031088363DCE8CB7C14BA480A4850F666F3) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.89
Date: Tue, 16 Jan 2024 22:12:57 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240116211257.kq5fubdztdk7d5dr@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
 <20230317114844.21563d9a.hanno@hboeck.de>
 <20230317194102.wvso2ex65fuwbukg@jwilk.net>
 <20230319091821.6f2073fb.hanno@hboeck.de>
 <20230321154519.xoymfc2t6ixalgls@jwilk.net>
 <20230324195650.6785dd20.hanno@hboeck.de>
 <20240108055242.nyoj4uosjl6udonx@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240108055242.nyoj4uosjl6udonx@jwilk.net>
X-Originating-IP: [37.59.142.109]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1ec6c274-465c-44e8-9c35-80aa74479a2d
X-Ovh-Tracer-Id: 17391212914339600151
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejfedgudegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeffveduieelvdelgfevgfehhefhgfelffehueeiffeivdegudfhjeduueevgedvhfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgihhthhhusgdrtghomhdpohhpvghnfigrlhhlrdgtohhmnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdelpdehrddujedvrddvheehrdekleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

* Jakub Wilk <jwilk@jwilk.net>, 2024-01-08 06:52:
>* Hanno Böck <hanno@hboeck.de>, 2023-03-24 19:56:
>>Here's a proposed patch to restrict access to the dangerous 
>>functionality.
>
>This patch has been included in Linux v6.7:
>https://git.kernel.org/linus/8d1b43f6a6df7bcea20982ad376a000d90906b42

Incidentally the patch fixes another minor vulnerability:

TIOCL_SETSEL selects text on the active vt, even when the fd you ran 
ioctl on refers to a different vt. Since switching virtual terminals 
doesn't require extra privileges, if /dev/ttyN is your controlling 
terminal, you can select text from any otherwise inaccessible vt, and 
then paste it into your own program.

Proof of concept (using minittyjack from my earlier posting[0]):

    n=$(fgconsole) m=$((n+1)) && chvt $m && minittyjack && chvt $n && cat

A more elaborate exploit is available here:
https://github.com/jwilk/vcsnoop


[0] https://www.openwall.com/lists/oss-security/2023/03/14/3/1

-- 
Jakub Wilk
