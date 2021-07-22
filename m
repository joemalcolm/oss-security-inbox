X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["987" "Thursday" "22" "July" "2021" "13:35:45" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "27" "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       jwilk@jwilk. Jul 22   27/987   " thread-indent "\"Re: [oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6138 invoked by uid 550); 22 Jul 2021 11:35:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6120 invoked from network); 22 Jul 2021 11:35:58 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-98R002f53a18b8-580c-4ae3-9054-544489afe929,
                    0A361C193565E72822C870316845097285AB8D7C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.65.228
Date: Thu, 22 Jul 2021 13:35:45 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210722113545.hewzinrjmy7jon6c@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 8ccbd222-57b4-49e0-9db6-b549cad5ca98
X-Ovh-Tracer-Id: 6346134825396590359
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeigdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetvefgvefhhfevgfeukeetueeiiefgheeuueeiheekvdegvdffffelhfegkeduudenucffohhmrghinhepghhithhhuhgsrdgtohhmpdhshhgvlhhlrghpphdrphihpdhrvggrughthhgvughotghsrdhiohenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] ipython3 may execute code from the current
 working directory

* Georgi Guninski <gguninski@gmail.com>, 2021-07-22, 11:52:
>Summary: under certain circumstances, ipython3 may execute code from 
>the current working directory.

Looks like this might be intentional? Or at least there's an option to 
turn off this behavior:

https://github.com/ipython/ipython/blob/7.25.0/IPython/core/shellapp.py#L219
https://ipython.readthedocs.io/en/stable/config/options/kernel.html#configtrait-InteractiveShellApp.ignore_cwd

However, in some Debian packages (at least 5.8.0-1 from Debian buster), 
even --ignore-cwd doesn't help, because /usr/bin/python3 looks like 
this:

   VERSION="3"
   if [ ! -f /usr/bin/python$VERSION ]
   then
           echo "Please install the python$VERSION package." >&2
           exit 1
   else
           exec python$VERSION -c "import sys; sys.argv[0] = '/usr/bin/ipython$VERSION'; from IPython.terminal.ipapp import launch_new_instance; launch_new_instance()" "$@"
   fi

But "python3 -c" adds cwd to sys.path.

-- 
Jakub Wilk
