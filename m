Received: (qmail 9980 invoked by uid 550); 21 Mar 2023 15:45:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9962 invoked from network); 21 Mar 2023 15:45:47 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-101G00473fdb381-87bf-46b9-b840-f852a87a3f6f,
                    5E6F774D64D4725D99A5EF4DB483D5D3AD37E6C7) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.138
Date: Tue, 21 Mar 2023 16:45:19 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20230321154519.xoymfc2t6ixalgls@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
 <20230317114844.21563d9a.hanno@hboeck.de>
 <20230317194102.wvso2ex65fuwbukg@jwilk.net>
 <20230319091821.6f2073fb.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230319091821.6f2073fb.hanno@hboeck.de>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 3e58023f-016e-433e-a571-b51d59959f74
X-Ovh-Tracer-Id: 15068762878652569367
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdegtddgjeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepledvleekteevfeehtdevffevteeileekfeejheetffdtvefffeejhefhffegkedvnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

* Hanno Böck <hanno@hboeck.de>, 2023-03-19 09:18:
>maybe restricting any TIOCLINUX sub features that implement anything 
>related to selection would be a good option. The gpm daemon runs as 
>root anyway.
>
>Do you see any risk left if
>TIOCL_SETSEL
>TIOCL_PASTESEL
>TIOCL_SELLOADLUT
>are no longer accessible to non-privileged processes?

I think that should be fine.

-- 
Jakub Wilk
