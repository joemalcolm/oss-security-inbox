X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["219" "Wednesday" "11" "November" "2020" "10:40:35" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20201111094035.5fbewlsfpj76zumb@jwilk.net>" "9" "Re: [oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil "11" "2020111109:40:35" "[oss-security] Dash executes code when noexec (\"-n\") is specified" (number mark "U       jwilk@jwilk. Nov 11    9/219   " thread-indent "\"Re: [oss-security] Dash executes code when noexec (\"-n\") is specified\"\n") "<20201111044821.GA15234@sinister.lan.codevat.com>" ("<20201111044821.GA15234@sinister.lan.codevat.com>") nil nil nil nil nil nil nil "Re: [oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32180 invoked by uid 550); 11 Nov 2020 09:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32133 invoked from network); 11 Nov 2020 09:40:49 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-104R0051d97319f-ac52-4648-83d1-b58d6209439a,
                    4A083795B75A0DC0A9853AF121BE972F010CA7BE) smtp.auth=jwilk@jwilk.net
Date: Wed, 11 Nov 2020 10:40:35 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20201111094035.5fbewlsfpj76zumb@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20201111044821.GA15234@sinister.lan.codevat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20201111044821.GA15234@sinister.lan.codevat.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 4f161012-6012-4734-827d-5474099bf9a5
X-Ovh-Tracer-Id: 12796133919780951831
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudduledgudduiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvffdttefhgfeljeejkefhgeffhfdutefgfeegudefueekfedvudekkeevtddvueenucffohhmrghinhepuggvsghirghnrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] Dash executes code when noexec ("-n") is specified

* Eric Pruitt <eric.pruitt@gmail.com>, 2020-11-10, 20:48:
>    $ dash -n -c 'echo this should not be executed'
>    this should not be executed

This was reported in 2017:
https://bugs.debian.org/858288

-- 
Jakub Wilk
