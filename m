X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["718" "Thursday" "22" "July" "2021" "23:30:27" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "21" "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       jwilk@jwilk. Jul 22   21/718   " thread-indent "\"Re: [oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18208 invoked by uid 550); 22 Jul 2021 21:30:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18178 invoked from network); 22 Jul 2021 21:30:40 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-96R00163aaae54-ed89-4d5d-8943-c4880eadaa64,
                    0A361C193565E72822C870316845097285AB8D7C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.65.228
Date: Thu, 22 Jul 2021 23:30:27 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210722213027.au2c6scyynktfrjj@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
 <20210722113545.hewzinrjmy7jon6c@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210722113545.hewzinrjmy7jon6c@jwilk.net>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 2a36c78c-025e-4643-b4e0-b781e49dd962
X-Ovh-Tracer-Id: 16389724947355457303
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeigdduhedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepiefhveefveekteduvdfhteeuudevjedvheekleektdeivdehtdelfeeflefhfeetnecuffhomhgrihhnpehgihhthhhusgdrtghomhdpshhhvghllhgrphhprdhphienucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
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

BTW, I used https://github.com/jwilk/python-syspath-tracker to locate 
the code that tampers with sys.path.

>However, in some Debian packages (at least 5.8.0-1 from Debian 
>buster), even --ignore-cwd doesn't help, because /usr/bin/python3 
>looks like this:

Oops, I meant /usr/bin/ipython3 of course.

-- 
Jakub Wilk
