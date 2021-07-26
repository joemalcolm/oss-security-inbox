X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["986" "Monday" "26" "July" "2021" "19:13:03" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "25" "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil "7" nil nil (number mark "U       jwilk@jwilk. Jul 26   25/986   " thread-indent "\"Re: [oss-security] Potential symlink attack in python3 __pycache__\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22310 invoked by uid 550); 26 Jul 2021 17:13:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22291 invoked from network); 26 Jul 2021 17:13:16 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-100R00386367b36-1f22-4b1b-8a8c-8768c79d6a59,
                    11FA1DB8C9E68E12866A8F0D931BA1D33610851D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.49.122
Date: Mon, 26 Jul 2021 19:13:03 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210726171303.sbqu537tv7dl3yyp@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAGUWgD_tV+cJjM_=TDrcNBhpcZOFm+JR2+Jv1tnpaSeXtM8EfQ@mail.gmail.com>
 <a373710a137a096ee8a530d960481a05566c1bae.camel@orlitzky.com>
 <CAGUWgD_G65OBZcMXhErz14E+-6MncSHwr9ZZvogDQOMvaDWaHA@mail.gmail.com>
 <YP7g8GUPcY+UJpg8@LykOS.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <YP7g8GUPcY+UJpg8@LykOS.localdomain>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 244ca548-5489-43b9-9f12-de4adab5abd1
X-Ovh-Tracer-Id: 17086656986437834519
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrgeehgddutdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] Potential symlink attack in python3 __pycache__

* Santiago Torres <torresariass@gmail.com>, 2021-07-26, 12:21:
>On Mon, Jul 26, 2021 at 06:59:30PM +0300, Georgi Guninski wrote:
>>python3 shell is still vulnerable from modules in the current 
>>directory, but some of them like |sys| and |os| can't be spoofed.
>
>Is this a consequence of sys/os being special exceptions, or the fact 
>that they are (if my memory doesn't fail me) a bunch of bindings to C 
>so's?

The "sys" module is compiled into the Python interpreter itself. 
Importing it never involves traversing sys.path.

The "os" module is another story. This module is imported during the 
interpreter initialization, apparently before cwd is added to sys.path, 
so subsequent "import os" is no-op. But if you tried reloading it, the 
code from cwd would be executed:

   $ echo 'print("moo")' > os.py
   $ python3 -c 'import os; print(os)'
   <module 'os' from '/usr/lib/python3.9/os.py'>
   $ python3 -c 'import os, importlib; importlib.reload(os)'
   moo

-- 
Jakub Wilk
