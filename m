Received: (qmail 15547 invoked by uid 550); 20 Dec 2022 21:59:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9384 invoked from network); 20 Dec 2022 21:51:58 -0000
Message-ID: <757dede0-dd98-104e-5fad-ac425a282382@ovn.org>
Date: Tue, 20 Dec 2022 22:51:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Cc: i.maximets@ovn.org, ovs-discuss <ovs-discuss@openvswitch.org>,
 Aaron Conole <aconole@redhat.com>, Qian Chen <cq674350529@gmail.com>
Content-Language: en-US
To: John Helmert III <ajak@gentoo.org>, oss-security@lists.openwall.com
References: <0894155b-6a17-c117-d826-04e4a6b8ecfa@ovn.org>
 <Y6ItNDy/+sfibmNL@gentoo.org>
From: Ilya Maximets <i.maximets@ovn.org>
In-Reply-To: <Y6ItNDy/+sfibmNL@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] [ADVISORY] LLDP underflow while parsing malformed
 Auto Attach TLV (Open vSwitch)

On 12/20/22 22:46, John Helmert III wrote:
> On Tue, Dec 20, 2022 at 10:39:23PM +0100, Ilya Maximets wrote:
>> Description
>> ===========
>>
>> Multiple versions of Open vSwitch are vulnerable to crafted LLDP
>> packets causing denial of service, and data underflow attacks.
>> Triggering the vulnerabilities requires LLDP processing to be enabled
>> for a specific port.  Open vSwitch versions prior to 2.4.0 are not
>> vulnerable.
>>
>> The Common Vulnerabilities and Exposures project (cve.mitre.org)
>> did not assign the identifier to this issue yet.  The identifier will
>> be communicated separately.
> 
> Has a CVE been requested?

Yes, CVE was requested via Red Hat.   There was initial communication
but they didn't provide us the identifier yet.

The issue was reported publicly, so we decided to release without waiting.

> 
>> This issue does not affect the `lldpd' project, although they share
>> a code base.  The issue is related to parsing the Auto Attach TLVs,
>> which is specific to the Open vSwitch implementation.
>>
>>
>> Mitigation
>> ==========
>>
>> For any version of Open vSwitch, preventing LLDP packets from reaching
>> Open vSwitch mitigates the vulnerability.  We do not recommend
>> attempting to mitigate the vulnerability this way because of the
>> following difficulties:
>>
>>     - Open vSwitch obtains packets before the iptables host firewall,
>>       so ebtables on the Open vSwitch host cannot ordinarily block the
>>       vulnerability.
>>
>>     - If Open vSwitch is configured to receive and transmit LLDP
>>       messages, the required functionality will need to be disabled
>>       potentially disrupting the network.
>>
>> We have found that Open vSwitch is subject to a denial of service, and
>> possibly a remote code execution exploit when LLDP processing is enabled
>> on an interface.  By default, interfaces are not configured to process
>> LLDP messages.
>>
>>
>> Fix
>> ===
>>
>> Patches to fix these vulnerabilities in Open vSwitch 2.13.x and newer are
>> applied to the appropriate branches, and the original patch is located
>> at:
>>
>>    https://mail.openvswitch.org/pipermail/ovs-dev/2022-December/400596.html
>>
>> Recommendation
>> ==============
>>
>> We recommend that users of Open vSwitch apply the respective patch, or
>> upgrade to a known patched version of Open vSwitch.  These include:
>>
>> * 3.0.3
>> * 2.17.5
>> * 2.16.6
>> * 2.15.7
>> * 2.14.8
>> * 2.13.10
>>
>>
>> Acknowledgments
>> ===============
>>
>> The Open vSwitch team wishes to thank the reporter:
>>
>>   Qian Chen <cq674350529@gmail.com>
>>
> 
> 
> 
> 
> 

