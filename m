Received: (qmail 24143 invoked by uid 550); 20 Feb 2023 16:57:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31797 invoked from network); 20 Feb 2023 15:58:19 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <b9d6de6b-abff-33d5-2ced-a085a1ca54a6@apache.org>
Date: Mon, 20 Feb 2023 15:58:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-24998: Apache Commons FileUpload: FileUpload DoS with
 excessive parts

Severity: important

Description:

Apache Commons FileUpload before 1.5 does not limit the number of 
request parts to be processed resulting in the possibility of an 
attacker triggering a DoS with a malicious upload or series of uploads.

Credit:

Jakob Ackermann (finder)

References:

https://lists.apache.org/thread/4xl4l09mhwg4vgsk7dxqogcjrobrrdoy
https://commons.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-24998
