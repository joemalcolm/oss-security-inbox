X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Tuesday" "8" "October" "2019" "18:11:31" "+0200" "Pietro Albini" "pietro@pietroalbini.org" "<cbfc13d8-ea1d-9523-7d17-c83e1535bb04@pietroalbini.org>" "19" "[oss-security] CVE-2019-16760: Cargo prior to Rust 1.26.0 may download the wrong dependency" nil nil nil "10" "2019100816:11:31" "[oss-security] CVE-2019-16760: Cargo prior to Rust 1.26.0 may download the wrong dependency" (number mark "U       pietro@pietr Oct  8   19/746   " thread-indent "\"[oss-security] CVE-2019-16760: Cargo prior to Rust 1.26.0 may download the wrong dependency\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-16760: Cargo prior to Rust 1.26.0 may download the wrong dependency" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8065 invoked by uid 550); 8 Oct 2019 16:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7820 invoked from network); 8 Oct 2019 16:11:43 -0000
To: oss-security@lists.openwall.com
From: Pietro Albini <pietro@pietroalbini.org>
Message-ID: <cbfc13d8-ea1d-9523-7d17-c83e1535bb04@pietroalbini.org>
Date: Tue, 8 Oct 2019 18:11:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2019-16760: Cargo prior to Rust 1.26.0 may download the wrong
 dependency

On 2019-09-30 the Rust Security team disclosed a vulnerability affecting 
all Rust releases prior to 1.26.0, causing Cargo to download and compile 
the wrong dependency under the right circumstances.

The vulnerability has been assigned CVE-2019-16760.

As the affected versions are not supported anymore upstream we won't be 
issuing patch releases addressing this vulnerability. Official patches 
(signed with the security team's GPG key) for Rust 1.19.0 to Rust 1.25.0 
are available here:

https://gist.github.com/pietroalbini/0d293b24a44babbeb6187e06eebd4992

More information on the vulnerability can be found in the advisory:

https://groups.google.com/forum/#!topic/rustlang-security-announcements/rVQ5e3TDnpQ

Pietro.
Rust Security team
