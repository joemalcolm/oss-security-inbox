X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Sunday" "22" "March" "2015" "23:41:56" "+0300" "Alexander Cherepanov" "cherepan@mccme.ru" "<550F2914.2080504@mccme.ru>" "12" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032220:41:56" "[oss-security] CVE for Kali Linux" (number mark "        cherepan@mcc Mar 22   12/513   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F0ADD.5020800@gmail.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F0ADD.5020800@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10228 invoked by uid 550); 22 Mar 2015 20:42:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10198 invoked from network); 22 Mar 2015 20:42:07 -0000
Message-ID: <550F2914.2080504@mccme.ru>
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F0ADD.5020800@gmail.com>
In-Reply-To: <550F0ADD.5020800@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun, 22 Mar 2015 23:41:56 +0300
From: Alexander Cherepanov <cherepan@mccme.ru>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On 2015-03-22 21:33, Daniel Micay wrote:
> HTTPS/HSTS/HPKP is important because it doesn't require that the user
> goes out of their way to validate the software (few do) and is needed to
> build the initial trust in the first place. How else do you get the GPG
> public key in the first place?

By HTTP via several routes. It's easy now -- just use Tor. Download you 
bootstrapping pieces through clearnet once and via Tor several times 
switching circuits in-between and compare them.

-- 
Alexander Cherepanov
