X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["585" "Wednesday" "11" "November" "2020" "20:37:05" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<394728b8-b300-9b22-4a74-bff02f447ca8@orlitzky.com>" "17" "Re: [oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil "11" "2020111201:37:05" "[oss-security] Dash executes code when noexec (\"-n\") is specified" (number mark "U       michael@orli Nov 11   17/585   " thread-indent "\"Re: [oss-security] Dash executes code when noexec (\"-n\") is specified\"\n") "<2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>" ("<20201111044821.GA15234@sinister.lan.codevat.com>" "<20201111094035.5fbewlsfpj76zumb@jwilk.net>" "<2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>") nil nil nil nil nil nil nil "Re: [oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19746 invoked by uid 550); 12 Nov 2020 01:37:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19728 invoked from network); 12 Nov 2020 01:37:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1605145027; bh=GChpN18ppNhxGE88A8DX6jcgre/EYzWgZS8Q09lDjaw=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=BVv8Z9tfOOQ5ZIBeQw69JMM5WZugYjPD7jP6wprhWx9RY0QDL5SVMKhuED8lB6e46
	 KuLebJUYrBzLyRjEFFZgWs+PRIG7MuOZ7dEJO7YXY2fZXUHZk3ODeIBFm83LOVIHq3
	 4SKoKAdOiSUSFJnYwSO6ljPD9JGfmPZngofqM054=
To: oss-security@lists.openwall.com
References: <20201111044821.GA15234@sinister.lan.codevat.com>
 <20201111094035.5fbewlsfpj76zumb@jwilk.net>
 <2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <394728b8-b300-9b22-4a74-bff02f447ca8@orlitzky.com>
Date: Wed, 11 Nov 2020 20:37:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <2af0cd5a-cd88-6373-6101-a4eab6bce65d@orlitzky.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Dash executes code when noexec ("-n") is specified

On 11/11/20 9:12 AM, Michael Orlitzky wrote:
> On 11/11/20 4:40 AM, Jakub Wilk wrote:
>> * Eric Pruitt <eric.pruitt@gmail.com>, 2020-11-10, 20:48:
>>>      $ dash -n -c 'echo this should not be executed'
>>>      this should not be executed
>>
>> This was reported in 2017:
>> https://bugs.debian.org/858288
>>
> 
> I forwarded this to Herbert, who maintains Dash and supplied the patch
> on the Debian bug.
> 

And if I was literate, I might have seen this the first time around:

https://git.kernel.org/pub/scm/utils/dash/dash.git/commit/?id=29d6f2148f10213de4e904d515e792d2cf8c968e
