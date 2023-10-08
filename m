Received: (qmail 7996 invoked by uid 550); 8 Oct 2023 09:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32747 invoked from network); 8 Oct 2023 06:56:05 -0000
Message-ID: <09205bd9-a5b6-48db-81ec-064d77e94248@cispa.de>
Date: Sun, 8 Oct 2023 08:55:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
CC: <oss-security@lists.openwall.com>, <fabian.thomas@cispa.de>,
	<lukas.gerlach@cispa.de>, <ruiyi.zhang@cispa.de>, Daniel Weber
	<daniel.weber@cispa.de>
References: <0fedc6a9-9be7-56f3-2ee0-0e07875b86ba@cispa.de>
 <20231006221824.GA14376@openwall.com>
Content-Language: en-US
From: Michael Schwarz <michael.schwarz@cispa.de>
In-Reply-To: <20231006221824.GA14376@openwall.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.250.9.199]
X-ClientProxiedBy: excmbx-11.um.gwdg.de (134.76.9.220) To excmbx-08.um.gwdg.de
 (134.76.9.215)
X-Virus-Scanned: (clean) by clamav
Subject: Re: [oss-security] Meltdown-US / Meltdown 3a Remaining Leakage

Hi Alexander,

On 07.10.23 00:18, Solar Designer wrote:
> In Linux, /proc/interrupts is generally world-readable.  So perhaps
> that's something to fix first, since yes it's known to allow for
> keystroke timing attacks.  Should be fixed in the kernel or/and chmod'ed
> by the userland.  And then:
Yes, that is true. Android, for example, prevents unprivileged access 
since version 8 to this file to prevent such attacks:

https://issuetracker.google.com/issues/37140047?pli=1

If our proposed mitigation is implemented (e.g., as opt-in using a 
kernel command-line parameter), the implementation could additionally 
prevent unprivileged access to /proc/interrupts.

Michael

-- 

Dr. Michael Schwarz
Faculty

CISPA Helmholtz Center for Information Security
Stuhlsatzenhaus 5, Saarland Informatics Campus
66123 Saarbrücken, Germany
Mail: michael.schwarz@cispa.de
Web: https://www.cispa.saarland

