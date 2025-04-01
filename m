Received: (qmail 13706 invoked by uid 550); 1 Apr 2025 16:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5773 invoked from network); 1 Apr 2025 13:55:55 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZMzZhky68c7SHpczUx7yaWkzfYoFg7db6F/m/KuyuqlzeZblnQhZ3kZoYNlGwueHlbWVXjHCA8zarh5yr2szyMyG0j1HQkX4yjcbLhHXmObKUr+gSPM7BBu3uBKiOYvGlfwSI2zihwj3bhWW8PyW98/jC2QX88J7hzAWePVWnXTqIxibkxBhCUNQQC2SVU4wR231L9uwOQ/MqWyHJkhM4kM60o/2YcJL5W3YDaoEK4IHmNUdNnO4xupjffcfq/0iCJG2vAktvEYRZjaKlK6VdgVLP3vAbzsaEwnd0WDXAOfe7BYDExc0YPFJdaB4IUbJaqQ8RUk0qQKDt/LmjXsYnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tNvi/iM9VwwZVzSe+eSJIY+MAU8bMTFwwpgvb2Bbh/8=;
 b=yZFgsilZ7oF+fz4OOZIFYZ9MFXEHj7arEtQmrg1qssVIwWmRYWRQ2mr22oXsAnw8t50aUPILQ7WDY1hBdULHoibGF4mZwKmDErbiCf5TADO4nIIUZWKeVU5wws940A7ArN2lLu2mtKqT5KuigJFeTWssfUe9Ga8o+LkKcMkYzeQ3nlD+s6njrelQ5mHHTKOO2u2CWYeZZGTzToiqPZvwSEhVShOnU6LSzXbj294UFyx6mNsySzMq9g3HCjl+bDG2Jw8/g8VxlGxAYt30JJ+3Vtw8COEkijNm+dc8B1bxJKFnzvHJz1p2rkEUqAQ0Hl6gT/32yCUMOxYQzU5reixM1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=randorisec.fr; dmarc=pass action=none
 header.from=randorisec.fr; dkim=pass header.d=randorisec.fr; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=randorisec.fr;
Message-ID: <01a8e1bc-fc43-410b-90e2-41645b2e9f67@randorisec.fr>
Date: Tue, 1 Apr 2025 15:55:41 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: hanguelkov@randorisec.fr, Davy Douhine <davy@randorisec.fr>
From: Arthur Mongodin <amongodin@randorisec.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR3P250CA0025.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:102:57::30) To MRXP264MB0246.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:16::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MRXP264MB0246:EE_|MRZP264MB2442:EE_
X-MS-Office365-Filtering-Correlation-Id: a45403d2-936e-4bde-6153-08dd7124e47f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aWtKbE52T211eGVNQWczRGtPYWRsK0t0cEh2OEF0cFN2WWVBZ1JnYmMyRkdu?=
 =?utf-8?B?RlpackxOcW1NZTZHMHo3VEZBYnNTRUI4VXg2VC9qaFBBN3FqOUM2NkdVZVNY?=
 =?utf-8?B?YnlLQnFGSUpQV1FJanBwQnFrQ2hNajJ1ZmxEZGI4U0ZoaXBuUURpRUwwQnFy?=
 =?utf-8?B?MzI2SmhLZ2FFWDNjNkk1NnBCK21zMGVGN1RqbU9BckxDZGZXUWxUN2NyamFv?=
 =?utf-8?B?L1Y0YVF3ZUtsUml5MnJaM3Eza3FUSUlxaEpJUkRSZ0orRjZLR2t5czJCTm9B?=
 =?utf-8?B?amR6Y0dIL0d4RUppQ1lud0h0NUJnYStQNW5TWEpYOUx0d1ArckRoZTlDN0dD?=
 =?utf-8?B?R0dBb0ZaY0dhSHFoSkdURHlkS2gyNXZ1dkFDM0gvc3JKdmJYUFFIaDZMNmJp?=
 =?utf-8?B?dTdsbUJBR1grQzlvY2pIVDdPNklpRkNmVVRVSDd1OTBlamViVmt2anRNTGtZ?=
 =?utf-8?B?Zy9neC9mOUZjd3BhVzBvR1RJVVE5OE9NNTA5N1p4WERmZDFucHB5ZEhCVjJZ?=
 =?utf-8?B?ZlVWUmhLZ0I4WnZFdkQ5UzVKR3JRUmpxTkNpSGVUelhKYjBVNlRBVEZQWjlB?=
 =?utf-8?B?YnhXc0E1NDRGcFNtL3dUbTN5WXE5K0pmL3c3OFhOR3pGaWQrOGtWbER1RHdS?=
 =?utf-8?B?NG9LUG82TFNoYjJhaFBGUzRESzArbmh3SHNqZDdXSHBPZmdtWEM0NjNIWURL?=
 =?utf-8?B?WUVZOFVubFl2by9ocFRtQytwclM4ZkpKTVAxZ0JPcFN2c1hHRU9GdTlBMDN0?=
 =?utf-8?B?eDdDbDhlUUZqdVRKWWlOMzF5SUE5NnpRY1ZkSngyRG5Hc0loQkNSMmZKaUgv?=
 =?utf-8?B?bjAvM3B4c2tIM2ZQcXI4R3BxWjNuVktKRzFDeGVqckxWNThZRHNxazZyckdU?=
 =?utf-8?B?QTBDWFdMcDlPNkgzOXdxODhCQVFvUzg5Z0R4dWRkQWJQT3YzdUdlbCtNaGFN?=
 =?utf-8?B?VFFKWFJQZHZuWm0yVk5qNzRNSmhSenIwdTM1QzFLOWlFdVdPZWZtN1RtWEd0?=
 =?utf-8?B?SmFtNEEvSTd5SncwSVlieUlnNERoQnZGbldNZWJyclk4Q2tpUWswdFBGMjd6?=
 =?utf-8?B?WHAzN2U4blN6TkxKdEs1TnJIS1JoaXF2YURaaDBUVkFyckFoZ2xYYm5NQThn?=
 =?utf-8?B?c2VoYTFkaGM5VmFZOTVNSlRabTZWSkRPa3JMY0RPWGJsQWJLRlFWNVZhNFpx?=
 =?utf-8?B?YTVkRGN1ZkZ3dWdaNFFINFplMXBCRzdtamxqMzNnSzJ4VjlvMCtyQzFoTUZW?=
 =?utf-8?B?Y3k0N3dQaVdMTDdCZ1dzdkovQ1V3MHlXOFNRUStzOGlvNjEwaVlPdndldUdT?=
 =?utf-8?B?VzNCaXlpMHd1SVNWbWRSRUdTWDA0c0FGQWUrSUUwV21vY0ZnSkVUWmRuejdU?=
 =?utf-8?B?b3Y1YjJ5NVltN1dDU2oxUGJzaEhTem0zdWtyRml6a2Z2ckpoOUFGa2FsbE9R?=
 =?utf-8?B?cU1CZlNJTXlvdkZsdXNiRzBiaUNwSkFsQzlFaUc2UmkzL1o5eU9ENlBjeENr?=
 =?utf-8?B?UHB6L0llSzN6MnExbXRJNStkQU5VLytLNndEaXVNV1VQTUpEUlc3MHlqVStR?=
 =?utf-8?B?RmFBeUJYdU5PK3g0K3Y5Nm4zeDVrU3VySjBmOHFCdVM2TVg5SE1VNGxibDlG?=
 =?utf-8?B?STcza3RzMGhJY3FXL2JMMXVabmdwVFVFSG9EMng5TUFnZzlXZEhkbktCTkI5?=
 =?utf-8?B?ZWRNTkRUWGRURmNkZ0lCNzZUN3I3WDdaMVFCU1RsWTFXY3Z2ck8rRnRQRzVz?=
 =?utf-8?B?Y2RxRzdFNXBqMEdqTTBmcFpUVHBjc2xoamtEcmNsaGFtSDlLR3BiSWFsUHpK?=
 =?utf-8?Q?g/QRJuaq2o/nODsEzQr9srYbkAP/6FT6qV81U=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MRXP264MB0246.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?U3h1VFB3NFc2Q3lXczJUdW1sODBkS1FXMGtXa1JFYTZIMDcrdERvazh5SDZp?=
 =?utf-8?B?eCt2S2Q5R09sVk9ySG8zV1F0U1JMcmZXR0dUYWptT0g5Uy9mc2FmUmpHVVJw?=
 =?utf-8?B?ODNNc3drQ1c5NWhGZzhZZ2EybEFzZjB6WEo1a0dkakI0VUJxRm5YTmthcEhB?=
 =?utf-8?B?VWVFNUtNVGozK1JERG00Yk82bmgwbHArOWlzaUZWSXNYY1pZRFMreXdQa2p6?=
 =?utf-8?B?dGtkMEh3Zy9MWGNiODIvQWFEcFBCUTNRWUpHWVd2a3RMZzBqRGVDMWhUa21L?=
 =?utf-8?B?OXZQeXd0QmpCN0FLT3FnMEtUVHV5SVBlUnpoNnQ5a3g2TUlMQ2N2VzFKS296?=
 =?utf-8?B?U0NqVzVmb3Y0VHhneHlEVDRrMFZCUHhmS1NlZ0RzblNlNkJPZ0x5aWZ1Rllu?=
 =?utf-8?B?Q3pmZkNyUUF4TU1GS2cydHlxdHZZTDR4dkFLd0VzS2RYem9CelpZMjh2Rjk1?=
 =?utf-8?B?RzV6SXBnMUNqWlVJTFRmWmpCeU9GRk53UU12dGxLQjNoL3JYcFpqWFpZYU54?=
 =?utf-8?B?U1FjMTY4RTliNEplckg1QzRpY1FsUytYSkxJSStvNXhmcVdXYjlBeDVtUFc2?=
 =?utf-8?B?cXlQamFtVWRmVENwYkltZ1dRaDBsSWpjdDdMWC9FZFRHYUZoRnF0RFF1d2tB?=
 =?utf-8?B?TTBaRUZ4a1YrK0ZnM0c1N3MrZDJSb002YkNuYnhwRkM4WGNYK1JBbUVKSWlZ?=
 =?utf-8?B?c21Fb1dsam9ISXMySTYvcTBWZ1IzMGFScHhoOElETSt3U2tQYkNsVklPMUpV?=
 =?utf-8?B?WjVqcEwrY0xhbDA2ZzVQTkJzR2s5VnAycmlRRDM4dS9tTGs1SnQyanJkOEpk?=
 =?utf-8?B?LzZLYlNIdXlvSkZ5MVlydW9tWnhzM21hT3I0MGZycDZ0NlFhRjdDUDBWWGNs?=
 =?utf-8?B?R25IYlhrcndGU0NiTUx3eGJkUnRjTTlEZThqaUFpcVVCYzU0OUVsQ0RyQ0JC?=
 =?utf-8?B?dmhsQnpuMURXaGdmd0ZaNXJCOW1xODNBOWdFODR2ZkFOUEpsdTExdG1mMnBt?=
 =?utf-8?B?NFNpU0hYUEtIL1NEeGZkVTdNdFRJSTRSYzA2KzFSUVg4d1JVamhmNGgzZVpr?=
 =?utf-8?B?Z1dFVlBXckI1b0hzaFFWRWg4UFN3RUFBK0dtcTU4NWNpN2RzUFVJbjNmblZ5?=
 =?utf-8?B?T2VmNjhELyt6dVE0akJQbHRScVF4NzhZRDZucHRGcnZwY0J6TlRnTnNycnMw?=
 =?utf-8?B?Ly9hbTE2SlZZMTI3UHIwWXNFSk5MNTE3QXhMY2RoYXMrWUFTOGVHdEJPZGpR?=
 =?utf-8?B?SFIrcTlQVHQ1ZEVvMnppRkZ0dVNTTi9KVTlIZEdlUlF0VGRaQ0RKQ0xEQ08z?=
 =?utf-8?B?M3lBZEU5dXQvUjJ4ampzblhwN0hPWm5EWFM2QUEwaUlvRTI0OGEwQlMrWDNz?=
 =?utf-8?B?aXNsSmR4MS8yUnV2TUNYbWxSZnU1VEwvMjcwTmRWclIrNm9tbE50ZTl3YTM2?=
 =?utf-8?B?MU8xVEFIaEJML2t1aDUyUVk1QzhTbkJaV2grWEQ1NFpybzVFMURyZWdGMkd0?=
 =?utf-8?B?c2czTkc2U1Urd0x1YlR4VXVBTlRkdHBxOGI2cncwOW15dmk2R201eW41ZVJl?=
 =?utf-8?B?ZEh0N0pPaFFaLzVPUm0wbnlONGczRTJtcHhscUxwangxYk5CcHJIcnRxUFBR?=
 =?utf-8?B?bUozaThvUFNPUjk1Zk1td1lRVEExWm5pdzhqMm1vVmdzWmVsOWM3R1VqbVFv?=
 =?utf-8?B?eXpLdkVHbHIxOGd0TzJMK1h2bE13UnBoTkVqa3JibmllSlFUa1QrYXFlYW95?=
 =?utf-8?B?UEx0ZG5FR0UraTNna3EwL0o3UTJGZ2ZOdG1zOGhINjQxRXh3YXpncFpOWWw5?=
 =?utf-8?B?OUx0QVR6OUdGaWVCalcyeTdFQzg3OXV3dU9HbS8vQWgxLzNrcFZyejhaY1Ro?=
 =?utf-8?B?UmFoTmt0WlNrSFZGSFpmUER1dUU2Y0JBc3EyMVFBK3FTc0Y0bHJNbUp1MENo?=
 =?utf-8?B?QkpsOHFnVkdzVFBjWDFTSkVoc1VEckNZRjZXUzhMMGVseG1IeW02K3AxZVQ2?=
 =?utf-8?B?amlLTDQvNWVRYjJGNmR3aUY4ZjhLOUwzYmo0RDhOb2JaNlQ0SWROQTVpZU5H?=
 =?utf-8?B?eE9td21hRnpGemFMVkRXNDJ0OEFudFpYRE9ycFpyd083Y2VCbHZBVkxpMitR?=
 =?utf-8?B?UkJJMkJpRXRWTUMvbDNsWlljaVowNDJzaS90RGFaWmRqWWhPM0Y0TEVwbWF4?=
 =?utf-8?B?bFE9PQ==?=
X-OriginatorOrg: randorisec.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: a45403d2-936e-4bde-6153-08dd7124e47f
X-MS-Exchange-CrossTenant-AuthSource: MRXP264MB0246.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 13:55:42.5927
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c1031ca0-4b69-4e1b-9ecb-9b3dcf99bc61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4NIsxN2wN34X0of1MBO9GMsuFOkXpKWBF3ZCwXqkXarEDObXJ5mjUAC5FuK25ZrfSjfmlyh2oEs4MLcfD2uX/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2442
Subject: [oss-security] Linux kernel: CVE-2024-57882 fix did not prevent data stream
 corruption in the MPTCP protocol

Hi list,

During previous research performed on the Linux kernel, we found a 
vulnerability in the MPTCP subsystem which could lead to a privilege 
escalation.
This vulnerability has been fixed and CVE-2024-57882 has been assigned 
to it.

The analyze of the patch 
(https://web.git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=cbb26f7d8451fe56ccac802c6db48d16240feebd) 
reveals that the root cause of the bug has been partially fixed.

The patch wants to ensure the mutual exclusion between the ADD_ADDR and 
DSS option. It wants to prevent that the establishment of the ADD_ADDR 
option will not corrupt information about the DSS option previously 
established.
However the check that ensures mutual exclusion is perfomed after the 
address concerned by the option ADD_ADDR has been set.

static bool mptcp_established_options_add_addr(struct sock *sk, struct 
sk_buff *skb,
                            unsigned int *size,
                            unsigned int remaining,
                            struct mptcp_out_options *opts)
{
     struct mptcp_subflow_context *subflow = mptcp_subflow_ctx(sk);
     struct mptcp_sock *msk = mptcp_sk(subflow->conn);
     bool drop_other_suboptions = false;
     unsigned int opt_size = *size;
     bool echo;
     int len;

     /* add addr will strip the existing options, be sure to avoid breaking
      * MPC/MPJ handshakes
      */
     if (!mptcp_pm_should_add_signal(msk) ||
         (opts->suboptions & (OPTION_MPTCP_MPJ_ACK | 
OPTION_MPTCP_MPC_ACK)) ||
         !mptcp_pm_add_addr_signal(msk, skb, opt_size, remaining, 
&opts->addr,       <====== [0]
             &echo, &drop_other_suboptions))
         return false;

     /*
      * Later on, mptcp_write_options() will enforce mutually exclusion with
      * DSS, bail out if such option is set and we can't drop it.
      */
     if (drop_other_suboptions)
         remaining += opt_size;
     else if (opts->suboptions & OPTION_MPTCP_DSS) 
            <======= [1]
         return false;

     // ...
}

The call to mptcp_pm_add_addr_signal at [0] will modify opts->addr (and 
corrupt DSS option information) and only after the check for mutual 
exclusion is done at [1].

We submitted a fix that introduces an intermediate variable which has 
been merged into the stable tree: 
https://web.git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=2c1f97a52cb827a5f2768e67a9dddffae1ed47ab.

Altough this is a corruption bug, we did not see any security impact 
from this bug.

Arthur Mongodin
Security researcher at Randorisec
