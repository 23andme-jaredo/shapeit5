#CONDITIONAL PATH DEFINITON
system: DYN_LIBS=-lz -lpthread -lbz2 -llzma
system: HTSSRC=/usr/local
system: HTSLIB_INC=$(HTSSRC)/include/htslib
system: HTSLIB_LIB=$(HTSSRC)/lib/libhts.a
system: BOOST_INC=/usr/include
system: BOOST_LIB_IO=/usr/lib/x86_64-linux-gnu/libboost_iostreams.a
system: BOOST_LIB_PO=/usr/lib/x86_64-linux-gnu/libboost_program_options.a
system: BOOST_LIB_SE=/usr/lib/x86_64-linux-gnu/libboost_serialization.a
system: $(BFILE)

desktop: HTSSRC=../..
desktop: HTSLIB_INC=$(HTSSRC)/htslib
desktop: HTSLIB_LIB=$(HTSSRC)/htslib/libhts.a
desktop: BOOST_INC=/usr/include
desktop: BOOST_LIB_IO=/usr/local/lib/libboost_iostreams.a
desktop: BOOST_LIB_PO=/usr/local/lib/libboost_program_options.a
desktop: $(BFILE)

olivier: HTSSRC=$(HOME)/Tools
olivier: HTSLIB_INC=$(HTSSRC)/htslib-1.15
olivier: HTSLIB_LIB=$(HTSSRC)/htslib-1.15/libhts.a
olivier: BOOST_INC=/usr/include
olivier: BOOST_LIB_IO=/usr/lib/x86_64-linux-gnu/libboost_iostreams.a
olivier: BOOST_LIB_PO=/usr/lib/x86_64-linux-gnu/libboost_program_options.a
olivier: $(BFILE)

laptop: HTSSRC=$(HOME)/Tools
laptop: HTSLIB_INC=$(HTSSRC)/htslib-1.10
laptop: HTSLIB_LIB=$(HTSSRC)/htslib-1.10/libhts.a
laptop: BOOST_INC=/usr/include
laptop: BOOST_LIB_IO=/usr/lib/x86_64-linux-gnu/libboost_iostreams.a
laptop: BOOST_LIB_PO=/usr/lib/x86_64-linux-gnu/libboost_program_options.a
laptop: $(BFILE)

debug: CXXFLAG=-g -mavx2 -mfma
debug: LDFLAG=-g
debug: HTSSRC=$(HOME)/Tools
debug: HTSLIB_INC=$(HTSSRC)/htslib-1.15
debug: HTSLIB_LIB=$(HTSSRC)/htslib-1.15/libhts.a
debug: BOOST_INC=/usr/include
debug: BOOST_LIB_IO=/usr/lib/x86_64-linux-gnu/libboost_iostreams.a
debug: BOOST_LIB_PO=/usr/lib/x86_64-linux-gnu/libboost_program_options.a
debug: $(BFILE)

curnagl: DYN_LIBS=-lz -lpthread -lcrypto /dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/xz-5.2.5-3zvzfm67t6ebuerybemshylrysbphghz/lib/liblzma.so /dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/bzip2-1.0.8-tsmb67uwhlqn5g6h6etjvftugq7y6mtl/lib/libbz2.so /dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/curl-7.74.0-fcqjhj645xhqp2ilrzafwqtqqnu7g42v/lib/libcurl.so
curnagl: HTSSRC=/dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/htslib-1.12-p4n5q4icj4g5e4of7mxq2i5xly4v4tax
curnagl: HTSLIB_INC=$(HTSSRC)/include
curnagl: HTSLIB_LIB=$(HTSSRC)/lib/libhts.a
curnagl: BOOST_INC=/dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/boost-1.74.0-yazg3k7kwtk64o3ljufuoewuhcjqdtqp/include
curnagl: BOOST_LIB_IO=/dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/boost-1.74.0-yazg3k7kwtk64o3ljufuoewuhcjqdtqp/lib/libboost_iostreams.a
curnagl: BOOST_LIB_PO=/dcsrsoft/spack/hetre/v1.1/spack/opt/spack/linux-rhel8-zen2/gcc-9.3.0/boost-1.74.0-yazg3k7kwtk64o3ljufuoewuhcjqdtqp/lib/libboost_program_options.a
curnagl: $(BFILE)

jura: HTSSRC=/scratch/beegfs/FAC/FBM/DBC/odelanea/default_sensitive/data/libs/htslib-1.12
jura: HTSLIB_INC=$(HTSSRC)
jura: HTSLIB_LIB=$(HTSSRC)/libhts.a
jura: BOOST_INC=/scratch/beefgs/FAC/FBM/DBC/odelanea/default_sensitive/data/libs/boost/include
jura: BOOST_LIB_IO=/scratch/beefgs/FAC/FBM/DBC/odelanea/default_sensitive/data/libs/boost/lib/libboost_iostreams.a
jura: BOOST_LIB_PO=/scratch/beefgs/FAC/FBM/DBC/odelanea/default_sensitive/data/libs/boost/lib/libboost_program_options.a
jura: $(BFILE)

wally: HTSSRC=/scratch/wally/FAC/FBM/DBC/odelanea/default/libs/htslib_v1.12
wally: HTSLIB_INC=$(HTSSRC)
wally: HTSLIB_LIB=$(HTSSRC)/libhts.a
wally: BOOST_INC=/scratch/wally/FAC/FBM/DBC/odelanea/default/libs/boost/include
wally: BOOST_LIB_IO=/scratch/wally/FAC/FBM/DBC/odelanea/default/libs/boost/lib/libboost_iostreams.a
wally: BOOST_LIB_PO=/scratch/wally/FAC/FBM/DBC/odelanea/default/libs/boost/lib/libboost_program_options.a
wally: $(BFILE)

static_exe: CXXFLAG=-O2 -mavx2 -mfma -D__COMMIT_ID__=\"$(COMMIT_VERS)\" -D__COMMIT_DATE__=\"$(COMMIT_DATE)\"
static_exe: LDFLAG=-O2
static_exe: HTSSRC=../..
static_exe: HTSLIB_INC=$(HTSSRC)/htslib_minimal
static_exe: HTSLIB_LIB=$(HTSSRC)/htslib_minimal/libhts.a
static_exe: BOOST_INC=/usr/include
static_exe: BOOST_LIB_IO=/usr/local/lib/libboost_iostreams.a
static_exe: BOOST_LIB_PO=/usr/local/lib/libboost_program_options.a
static_exe: $(EXEFILE)

# static desktop Robin
static_exe_robin_desktop: CXXFLAG=-O2 -mavx2 -mfma -D__COMMIT_ID__=\"$(COMMIT_VERS)\" -D__COMMIT_DATE__=\"$(COMMIT_DATE)\"
static_exe_robin_desktop: LDFLAG=-O2
static_exe_robin_desktop: HTSSRC=/home/robin/Dropbox/LIB
static_exe_robin_desktop: HTSLIB_INC=$(HTSSRC)/htslib_minimal
static_exe_robin_desktop: HTSLIB_LIB=$(HTSSRC)/htslib_minimal/libhts.a
static_exe_robin_desktop: BOOST_INC=/usr/include
static_exe_robin_desktop: BOOST_LIB_IO=$(HTSSRC)/boost/lib/libboost_iostreams.a
static_exe_robin_desktop: BOOST_LIB_PO=$(HTSSRC)/boost/lib/libboost_program_options.a
static_exe_robin_desktop: $(EXEFILE)

amazonlinux2022: HTSLIB_INC=/usr/local/include/htslib
amazonlinux2022: HTSLIB_LIB=/usr/local/lib/libhts.a
amazonlinux2022: BOOST_INC=/usr/include
amazonlinux2022: BOOST_LIB_IO=/usr/lib64/libboost_iostreams.a
amazonlinux2022: BOOST_LIB_PO=/usr/lib64/libboost_program_options.a
amazonlinux2022: $(BFILE)

ubuntu: HTSLIB_INC=/usr/local/include/htslib
ubuntu: HTSLIB_LIB=/usr/local/lib/libhts.a
ubuntu: BOOST_INC=/usr/include
ubuntu: BOOST_LIB_IO=/usr/lib/x86_64-linux-gnu/libboost_iostreams.a
ubuntu: BOOST_LIB_PO=/usr/lib/x86_64-linux-gnu/libboost_program_options.a
ubuntu: $(BFILE)

centos7: HTSLIB_INC=/usr/local/include/htslib
centos7: HTSLIB_LIB=/usr/local/lib/libhts.a
centos7: BOOST_INC=/usr/include
centos7: BOOST_LIB_IO=/usr/local/lib/libboost_iostreams.a
centos7: BOOST_LIB_PO=/usr/local/lib/libboost_program_options.a
centos7: $(BFILE)

#COMPILATION RULES
all: desktop
