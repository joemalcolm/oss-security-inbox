X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["579" "Saturday" "24" "July" "2021" "18:59:55" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "17" "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       jwilk@jwilk. Jul 24   17/579   " thread-indent "\"Re: [oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21588 invoked by uid 550); 24 Jul 2021 17:00:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21560 invoked from network); 24 Jul 2021 17:00:09 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-105G006ce9ae3e9-12a7-48fe-bd8b-27f880d2e912,
                    8D5CC3B75530A0E1625F73973F455CDD864D3173) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.65.118
Date: Sat, 24 Jul 2021 18:59:55 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210724165955.sgskdvbjhp6dolud@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
 <20210722113545.hewzinrjmy7jon6c@jwilk.net>
 <85b3215f-530e-a698-ac60-57a03763fd3b@wichmann.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <85b3215f-530e-a698-ac60-57a03763fd3b@wichmann.us>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 96b8e9a8-d0a3-4ea9-9267-b5ec3bbf6ea5
X-Ovh-Tracer-Id: 5119748352905369367
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrgedtgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepiefhveefveekteduvdfhteeuudevjedvheekleektdeivdehtdelfeeflefhfeetnecuffhomhgrihhnpehgihhthhhusgdrtghomhdpshhhvghllhgrphhprdhphienucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
Subject: Re: [oss-security] ipython3 may execute code from the current
 working directory

* Mats Wichmann <mats@wichmann.us>, 2021-07-23, 14:39:
>>https://github.com/ipython/ipython/blob/7.25.0/IPython/core/shellapp.py#L219
>
>normally (cpython), an empty string in sys.path doesn't mean "current 
>directory", it means "script directory", the directory the script 
>you're running is found in [1].

No, empty string in sys.path always means cwd.

sys.path[0] is the script directory (if available), but that's a 
non-empty string.

But you might be right that this is IPython's failure to mimic how the 
normal Python interpreter initializes sys.path.

-- 
Jakub Wilk
