Received: (qmail 11789 invoked by uid 550); 6 Jun 2023 23:58:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25881 invoked from network); 6 Jun 2023 18:02:25 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <b8241525-7d3d-ada1-ee36-46d711722c53@apache.org>
Date: Tue, 6 Jun 2023 11:01:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From: Michael Jumper <mjumper@apache.org>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
References: <ac30264b-daba-2c9f-95bd-224cdccee419@apache.org>
 <ZH9uHeiWrtK5oDz7@itl-email>
Content-Language: en-US
Cc: oss-security@lists.openwall.com, security@guacamole.apache.org
In-Reply-To: <ZH9uHeiWrtK5oDz7@itl-email>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] [SECURITY] CVE-2023-30576: Apache Guacamole:
 Use-after-free in handling of RDP audio input buffer

On 6/6/23 10:34, Demi Marie Obenour wrote:
> On Tue, Jun 06, 2023 at 10:12:29AM -0700, Michael Jumper wrote:
>> Severity: moderate
>> Base CVSS Score: 6.8 (AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N)
> 
> Why is this A:N ...

The issue in question has no impact on the availability of a deployed 
instance of the service.

> ... and AC:H?

A successful attack in this case would depend on a complex series of 
factors and non-deterministic events outside the control of the attacker.

- Mike
