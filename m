X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4595" "Friday" "11" "January" "2019" "23:43:46" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tTjsyxF+TN1_oL_LQh=Mo0A2FdHu06e2TNqS9mJ4qGhqg@mail.gmail.com>" "100" "[oss-security] Memory leak in libiec61850 protocol" "^Date:" nil nil "1" "2019011118:13:46" "[oss-security] Memory leak in libiec61850 protocol" (number mark "        mishra.dhira Jan 11  100/4595  " thread-indent "\"[oss-security] Memory leak in libiec61850 protocol\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5187 invoked by uid 550); 11 Jan 2019 18:20:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27670 invoked from network); 11 Jan 2019 18:14:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/mhRrplhfUZcJ0HBj9k9o7B3f9aig1VIxHU+EaTQUbE=;
        b=Aa5lZDV4gudA0KvcW3i2cVwb4vZibXP+5FQDAW0v1NJZB30rN1fMvZA7pN+Bgb87yJ
         zpoTRrKa3y5MJiCB62aVYeB5Cj8t60Z1ji56au5Nc01GeHLwONtAICHZsYEQ3rFIqw6i
         9Y3IDH3HDG/Le18ToT3okHkmM0fEuGAEDzYvYyVwsb+UGDM1qE6ymPFVpyRLXFIbYtdY
         mLKXEy4sK/C6FxlW4i/dPJYpn0TNeE0ZcbcA6YN8ifv/VEWWU+OtuU7dDsoE3E8DKFFg
         qVeJ1wN8OFKBVCTxVOofsJKg12VBC7u/mSK+0KuauwA5LDoO9lpM9+/pcDmwT5GQ7SWL
         pKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/mhRrplhfUZcJ0HBj9k9o7B3f9aig1VIxHU+EaTQUbE=;
        b=JOKsUXAkn5Xy4XoJ06IbZqS2mX3O6twc6a/s98e/KAyQI7iHPryvjk/+oIuTM10WZ+
         sZeQjgdo7NrQrep/sdNd7r+x+EoPTxhZKX9iA97GLkcn3dSg3wwpnlUBZjYyUbjfY737
         7IEUlDy5N2dhVnim+XlQgL5WYG9BCk5n+4x5sg6bjxpUyIwY8crCq0a0jSJB9vkfou4+
         ePPKZnmSsxajOd3qvyITv0cKd0Nb8AGCstJYoglXNrwkkKtHqZhBmia8y2I7hJzcMuGC
         grA9iBhrwrI2DHGQaCni4vKcK7QEPUNWNBVQzpE4cgoON2OROQ80a/puWys3T5vzm//i
         Drog==
X-Gm-Message-State: AJcUukd28fXI0OwZUU6xy+80E1LihFOzsivdsnNqNvfyLu4WQbwfstaO
	kl03oOuIvOTu+aeMelGzUxSMAbasowYLFmDDAFHF5JyR
X-Google-Smtp-Source: ALg8bN4AhJIsxm8lGAPmF9hO8jugpu6bZWMP5onn1crTpa/qwZGJsthPQoyjMuhYPISax9J2tfkdCZPO/ALJvf5VTLI=
X-Received: by 2002:a65:534b:: with SMTP id w11mr4234195pgr.125.1547230438189;
 Fri, 11 Jan 2019 10:13:58 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG8b5tTjsyxF+TN1_oL_LQh=Mo0A2FdHu06e2TNqS9mJ4qGhqg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a770d6057f32a8cf"
Date: Fri, 11 Jan 2019 23:43:46 +0530
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Memory leak in libiec61850 protocol
To: oss-security@lists.openwall.com

--000000000000a770d6057f32a8cf
Content-Type: text/plain; charset="UTF-8"

Hi List,

## Summary:
An issue has been found in libIEC61850 v1.3.1. Memory_malloc in
hal/memory/lib_memory.c has a memory leak when called from
Asn1PrimitiveValue_create in mms/asn1/asn1_ber_primitive_value.c, as
demonstrated by goose_publisher_example.c and iec61850_9_2_LE_example.c.

## Snip code from goose_publisher_example.c#L30 :
    LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt32(1234));
    LinkedList_add(dataSetValues, MmsValue_newBinaryTime(false));
    LinkedList_add(dataSetValues, MmsValue_newIntegerFromInt32(5678));

## Memory leak:

==1276==ERROR: LeakSanitizer: detected memory leaks
Direct leak of 10 byte(s) in 1 object(s) allocated from:
    #0 0x7f98bdabdb50 in __interceptor_malloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xdeb50)
    #1 0x55c2071bac8b in Memory_malloc
/home/input0/Desktop/libiec61850/hal/memory/lib_memory.c:47
    #2 0x55c2071abca3 in Asn1PrimitiveValue_create
/home/input0/Desktop/libiec61850/src/mms/asn1/asn1_ber_primitive_value.c:31
    #3 0x55c2071ac49b in BerInteger_createInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:49
    #4 0x55c2071ac8e3 in BerInteger_createFromInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:97
    #5 0x55c2071a27e1 in MmsValue_newIntegerFromInt32
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:827
    #6 0x55c20719c192 in main
/home/input0/Desktop/libiec61850/examples/goose_publisher/goose_publisher_example.c:30
    #7 0x7f98bd3f0b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

Direct leak of 10 byte(s) in 1 object(s) allocated from:
    #0 0x7f98bdabdb50 in __interceptor_malloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xdeb50)
    #1 0x55c2071bac8b in Memory_malloc
/home/input0/Desktop/libiec61850/hal/memory/lib_memory.c:47
    #2 0x55c2071abca3 in Asn1PrimitiveValue_create
/home/input0/Desktop/libiec61850/src/mms/asn1/asn1_ber_primitive_value.c:31
    #3 0x55c2071ac49b in BerInteger_createInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:49
    #4 0x55c2071ac8e3 in BerInteger_createFromInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:97
    #5 0x55c2071a27e1 in MmsValue_newIntegerFromInt32
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:827
    #6 0x55c20719c1d0 in main
/home/input0/Desktop/libiec61850/examples/goose_publisher/goose_publisher_example.c:32
    #7 0x7f98bd3f0b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

Direct leak of 5 byte(s) in 1 object(s) allocated from:
    #0 0x7f98bdabdd38 in __interceptor_calloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xded38)
    #1 0x55c2071bacc4 in Memory_calloc
/home/input0/Desktop/libiec61850/hal/memory/lib_memory.c:59
    #2 0x55c2071abd39 in Asn1PrimitiveValue_create
/home/input0/Desktop/libiec61850/src/mms/asn1/asn1_ber_primitive_value.c:35
    #3 0x55c2071ac49b in BerInteger_createInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:49
    #4 0x55c2071ac8e3 in BerInteger_createFromInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:97
    #5 0x55c2071a27e1 in MmsValue_newIntegerFromInt32
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:827
    #6 0x55c20719c1d0 in main
/home/input0/Desktop/libiec61850/examples/goose_publisher/goose_publisher_example.c:32
    #7 0x7f98bd3f0b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

Direct leak of 5 byte(s) in 1 object(s) allocated from:
    #0 0x7f98bdabdd38 in __interceptor_calloc
(/usr/lib/x86_64-linux-gnu/libasan.so.4+0xded38)
    #1 0x55c2071bacc4 in Memory_calloc
/home/input0/Desktop/libiec61850/hal/memory/lib_memory.c:59
    #2 0x55c2071abd39 in Asn1PrimitiveValue_create
/home/input0/Desktop/libiec61850/src/mms/asn1/asn1_ber_primitive_value.c:35
    #3 0x55c2071ac49b in BerInteger_createInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:49
    #4 0x55c2071ac8e3 in BerInteger_createFromInt32
/home/input0/Desktop/libiec61850/src/mms/asn1/ber_integer.c:97
    #5 0x55c2071a27e1 in MmsValue_newIntegerFromInt32
/home/input0/Desktop/libiec61850/src/mms/iso_mms/common/mms_value.c:827
    #6 0x55c20719c192 in main
/home/input0/Desktop/libiec61850/examples/goose_publisher/goose_publisher_example.c:30
    #7 0x7f98bd3f0b96 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b96)

SUMMARY: AddressSanitizer: 30 byte(s) leaked in 4 allocation(s).

Later CVE-2019-6135 was assigned to this issue.


Thank you
@mishradhiraj_

--000000000000a770d6057f32a8cf--
