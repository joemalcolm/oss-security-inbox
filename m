Received: (qmail 7584 invoked by uid 550); 12 Apr 2024 16:37:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7560 invoked from network); 12 Apr 2024 16:37:56 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-106R0065c8b13b1-6745-47c8-a56f-65e0a252eb6d,
                    85A3E892C6963C1368CED7EEBE9CFA9DF350C9AD) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 31.0.177.240
Date: Fri, 12 Apr 2024 18:37:44 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20240412163744.6z5n5fhqdu27jybj@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <f0a95b6f-8738-4ca6-9462-35bdca04293a@nil.im>
 <12bfdf5d8ee20d341ce5ac206dc72b7b@purelymail.com>
 <fc8936e9-4e95-4aef-ac30-f2d99817f3f7@nil.im>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <fc8936e9-4e95-4aef-ac30-f2d99817f3f7@nil.im>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 310b8abb-e253-4598-956b-04b76c31854e
X-Ovh-Tracer-Id: 7159316035437582103
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrudeiuddguddtgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepleffudeuleehvefhvdejjeefuddvhfeuvdejtddtheegudfgteeggfdugfejffdunecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdeipdefuddrtddrudejjedrvdegtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

* Jonathan Schleifer <js@nil.im>, 2024-03-30 17:17:
>I replaced the sed in here:
>
>sed \"r\n\" $gl_am_configmake | eval $gl_path_map | 
>$gl_localedir_prefix -d 2>/dev/null
>
>With a simple cat, as I could not make sed work. This worries me as it 
>means there is probably some other transformation that I'm missing that 
>would have made the sed work.

It's confusing because there are two layers of eval involved. You 
actually end up running:

   sed rn ...

The "r" command means "read from file"; but there's no file named "n", 
so this is no-op.

The sed command is not completely equivalent to cat though: it appends a 
newline, because the original file didn't end with one. This trailing 
garbage slightly upsets xz(1):

     xz: (stdin): Unexpected end of input

(You normally wouldn't see this warning, thanks to generous use of 
"2>/dev/null" in build-to-host.m4.)

-- 
Jakub Wilk
