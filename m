X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Friday" "23" "July" "2021" "22:14:14" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "21" "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       jwilk@jwilk. Jul 23   21/786   " thread-indent "\"Re: [oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19492 invoked by uid 550); 23 Jul 2021 20:14:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19468 invoked from network); 23 Jul 2021 20:14:27 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-102R00414e2446a-5646-43b1-8098-863b831748f2,
                    44FE704B7B11FEBC08C4C9789B2F12B64C1D527C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 94.254.184.115
Date: Fri, 23 Jul 2021 22:14:14 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210723201414.lnpdaxfnxiremhsp@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
 <20210722113545.hewzinrjmy7jon6c@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210722113545.hewzinrjmy7jon6c@jwilk.net>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 075107bd-9908-4c62-bbf1-75afc4189f41
X-Ovh-Tracer-Id: 2528489716037768983
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrfeekgddugeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteevgfevhffhvefgueekteeuieeigfehueeuieehkedvgedvfffflefhgeekuddunecuffhomhgrihhnpehgihhthhhusgdrtghomhdpshhhvghllhgrphhprdhphidprhgvrgguthhhvgguohgtshdrihhonecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] ipython3 may execute code from the current
 working directory

* Jakub Wilk <jwilk@jwilk.net>, 2021-07-22, 13:35:
>* Georgi Guninski <gguninski@gmail.com>, 2021-07-22, 11:52:
>>Summary: under certain circumstances, ipython3 may execute code from 
>>the current working directory.
>
>Looks like this might be intentional? Or at least there's an option to 
>turn off this behavior:
>
>https://github.com/ipython/ipython/blob/7.25.0/IPython/core/shellapp.py#L219
>https://ipython.readthedocs.io/en/stable/config/options/kernel.html#configtrait-InteractiveShellApp.ignore_cwd

On a second thought, --ignore-cwd is a relatively new invention (added 
in 7.13.0, I think), ...

>However, in some Debian packages (at least 5.8.0-1 from Debian 
>buster), even --ignore-cwd doesn't help,

...so it couldn't have been used in this old version.

-- 
Jakub Wilk
