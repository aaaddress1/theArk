#include <windows.h>
#include <iostream>

# define FORCE_INLINE __attribute__((always_inline)) inline
# define NOINLINE __declspec(noinline)
# define shellFunc __attribute__((fastcall)) __attribute__((section("shell"))) NOINLINE
void shellFunc stubEntry();

# define FORCE_INLINE __attribute__((always_inline)) inline
# define NOINLINE __declspec(noinline)
# define shellFunc __attribute__((fastcall)) __attribute__((section("shell"))) NOINLINE

#include <Windows.h>
#include <stdio.h>
#include <stdint.h>
typedef struct _PEB_LDR_DATA
{
	ULONG Length;
	UCHAR Initialized;
	PVOID SsHandle;
	LIST_ENTRY InLoadOrderModuleList;
	LIST_ENTRY InMemoryOrderModuleList;
	LIST_ENTRY InInitializationOrderModuleList;
	PVOID EntryInProgress;
} PEB_LDR_DATA, *PPEB_LDR_DATA;
typedef struct _UNICODE_STRING32
{
	USHORT Length;
	USHORT MaximumLength;
	PWSTR Buffer;
} UNICODE_STRING32, *PUNICODE_STRING32;
typedef struct _PEB32
{
	UCHAR InheritedAddressSpace;
	UCHAR ReadImageFileExecOptions;
	UCHAR BeingDebugged;
	UCHAR BitField;
	ULONG Mutant;
	ULONG ImageBaseAddress;
	PPEB_LDR_DATA Ldr;
	ULONG ProcessParameters;
	ULONG SubSystemData;
	ULONG ProcessHeap;
	ULONG FastPebLock;
	ULONG AtlThunkSListPtr;
	ULONG IFEOKey;
	ULONG CrossProcessFlags;
	ULONG UserSharedInfoPtr;
	ULONG SystemReserved;
	ULONG AtlThunkSListPtr32;
	ULONG ApiSetMap;
} PEB32, *PPEB32;
typedef struct _PEB_LDR_DATA32
{
	ULONG Length;
	BOOLEAN Initialized;
	ULONG SsHandle;
	LIST_ENTRY32 InLoadOrderModuleList;
	LIST_ENTRY32 InMemoryOrderModuleList;
	LIST_ENTRY32 InInitializationOrderModuleList;
	ULONG EntryInProgress;
} PEB_LDR_DATA32, *PPEB_LDR_DATA32;
typedef struct _LDR_DATA_TABLE_ENTRY32
{
	LIST_ENTRY32 InLoadOrderLinks;
	LIST_ENTRY32 InMemoryOrderModuleList;
	LIST_ENTRY32 InInitializationOrderModuleList;
	ULONG DllBase;
	ULONG EntryPoint;
	ULONG SizeOfImage;
	UNICODE_STRING32 FullDllName;
	UNICODE_STRING32 BaseDllName;
	ULONG Flags;
	USHORT LoadCount;
	USHORT TlsIndex;
	union
	{
		LIST_ENTRY32 HashLinks;
		ULONG SectionPointer;
	};
	ULONG CheckSum;
	union
	{
		ULONG TimeDateStamp;
		ULONG LoadedImports;
	};
	ULONG EntryPointActivationContext;
	ULONG PatchInformation;
} LDR_DATA_TABLE_ENTRY32, *PLDR_DATA_TABLE_ENTRY32;
typedef struct _PROCESS_BASIC_INFORMATION64 {
	ULONG64 ExitStatus;
	ULONG64 PebBaseAddress;
	ULONG64 AffinityMask;
	ULONG64 BasePriority;
	ULONG64 UniqueProcessId;
	ULONG64 InheritedFromUniqueProcessId;
} PROCESS_BASIC_INFORMATION64, *PPROCESS_BASIC_INFORMATION64;
typedef struct _PEB64
{
	UCHAR InheritedAddressSpace;
	UCHAR ReadImageFileExecOptions;
	UCHAR BeingDebugged;
	UCHAR BitField;
	ULONG64 Mutant;
	ULONG64 ImageBaseAddress;
	PPEB_LDR_DATA Ldr;
	ULONG64 ProcessParameters;
	ULONG64 SubSystemData;
	ULONG64 ProcessHeap;
	ULONG64 FastPebLock;
	ULONG64 AtlThunkSListPtr;
	ULONG64 IFEOKey;
	ULONG64 CrossProcessFlags;
	ULONG64 UserSharedInfoPtr;
	ULONG SystemReserved;
	ULONG AtlThunkSListPtr32;
	ULONG64 ApiSetMap;
} PEB64, *PPEB64;
typedef struct _PEB_LDR_DATA64
{
	ULONG Length;
	BOOLEAN Initialized;
	ULONG64 SsHandle;
	LIST_ENTRY64 InLoadOrderModuleList;
	LIST_ENTRY64 InMemoryOrderModuleList;
	LIST_ENTRY64 InInitializationOrderModuleList;
	ULONG64 EntryInProgress;
} PEB_LDR_DATA64, *PPEB_LDR_DATA64;
typedef struct _UNICODE_STRING64
{
	USHORT Length;
	USHORT MaximumLength;
	PWSTR Buffer;
} UNICODE_STRING64, *PUNICODE_STRING64;
typedef struct _LDR_DATA_TABLE_ENTRY64
{
	LIST_ENTRY64 InLoadOrderLinks;
	LIST_ENTRY64 InMemoryOrderModuleList;
	LIST_ENTRY64 InInitializationOrderModuleList;
	ULONG64 DllBase;
	ULONG64 EntryPoint;
	ULONG SizeOfImage;
	UNICODE_STRING64 FullDllName;
	UNICODE_STRING64 BaseDllName;
	ULONG Flags;
	USHORT LoadCount;
	USHORT TlsIndex;
	union
	{
		LIST_ENTRY64 HashLinks;
		ULONG64 SectionPointer;
	};
	ULONG CheckSum;
	union
	{
		ULONG TimeDateStamp;
		ULONG64 LoadedImports;
	};
	ULONG64 EntryPointActivationContext;
	ULONG64 PatchInformation;
} LDR_DATA_TABLE_ENTRY64, *PLDR_DATA_TABLE_ENTRY64;
/////////

bool shellFunc mystrcmp(char* str1, char* str2) {
	while (*str1 && *(str1++) == *(str2++));
	return !(*str2);
}

size_t shellFunc getWinAPI(size_t module, char* in_funcName)
{
#if defined _WIN64
	PIMAGE_NT_HEADERS64 ntHeaders = (PIMAGE_NT_HEADERS64)(module + ((PIMAGE_DOS_HEADER)module)->e_lfanew);
#else
	PIMAGE_NT_HEADERS32 ntHeaders = (PIMAGE_NT_HEADERS32)(module + ((PIMAGE_DOS_HEADER)module)->e_lfanew);
#endif
	PIMAGE_DATA_DIRECTORY impDir = &ntHeaders->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT];
	PIMAGE_EXPORT_DIRECTORY ied = (PIMAGE_EXPORT_DIRECTORY)(module + impDir->VirtualAddress);
	if ( !ied->AddressOfNames ) return 0;

	DWORD* vaNameArr = (DWORD *)(module + ied->AddressOfNames);
	WORD* vaOrdArr = (WORD *)(module + ied->AddressOfNameOrdinals);
	DWORD* vaFuncArr = (DWORD *)(module + ied->AddressOfFunctions);

	for (DWORD i = 0; i < ied->NumberOfNames; i++)
		if ( mystrcmp( in_funcName, (char *)(module + vaNameArr[i])) )
			return module + vaFuncArr[ vaOrdArr[i] ];
		
	return (size_t)0;
}

size_t shellFunc blindFetchWinAPI(char* funcName) {
	#ifdef _WIN64
		PPEB64 pPEB = (PPEB64)__readgsqword(0x60);
		PLIST_ENTRY header = &(pPEB->Ldr->InMemoryOrderModuleList);
		PLIST_ENTRY curr = header->Flink;
		for (; curr != header; curr = curr->Flink) {
			LDR_DATA_TABLE_ENTRY64 *data = CONTAINING_RECORD(curr, LDR_DATA_TABLE_ENTRY64, InMemoryOrderModuleList);
			size_t pFunc = getWinAPI(data->DllBase, funcName);
			if (pFunc) return pFunc;
		}
	#else
		PPEB32 pPEB = (PPEB32)__readfsdword(0x30);
		PLIST_ENTRY header = &(pPEB->Ldr->InMemoryOrderModuleList);
		PLIST_ENTRY curr = header->Flink;
		for (; curr != header; curr = curr->Flink) {
			LDR_DATA_TABLE_ENTRY32 *data = CONTAINING_RECORD(curr, LDR_DATA_TABLE_ENTRY32, InMemoryOrderModuleList);
			size_t pFunc = getWinAPI(data->DllBase, funcName);
			if (pFunc) return pFunc;
		}
	#endif
	return (size_t)0;
}


#define getNtHdr(buf) ((IMAGE_NT_HEADERS*)((size_t)buf + ((IMAGE_DOS_HEADER *)buf)->e_lfanew ))
#define getSectionArr(buf) ((IMAGE_SECTION_HEADER *)((size_t)buf + ((IMAGE_DOS_HEADER *)buf)->e_lfanew + sizeof(IMAGE_NT_HEADERS)))
#define getPeb() ((PPEB32)__readfsdword(0x30))

PIMAGE_SECTION_HEADER shellFunc getSectionHdrByName(char* sectionName) {
	IMAGE_SECTION_HEADER* sectionHdr = getSectionArr(getPeb()->ImageBaseAddress);
	for (size_t index = 0; index < getNtHdr(getPeb()->ImageBaseAddress)->FileHeader.NumberOfSections; index++)
		if (mystrcmp((char *)&(sectionHdr[index].Name), sectionName))
			return &sectionHdr[index];
	return 0;
}

struct packingRecord {
	IMAGE_DATA_DIRECTORY prevDataDirTable[15];
	DWORD orginalEntryPoint;
};

void shellFunc myMemcpy(void* dest, void* src, int size)
{
    uint8_t *pdest = (uint8_t*) dest;
    uint8_t *psrc = (uint8_t*) src;

    int loops = (size / sizeof(uint32_t));
    for(int index = 0; index < loops; ++index)
    {
        *((uint32_t*)pdest) = *((uint32_t*)psrc);
        pdest += sizeof(uint32_t);
        psrc += sizeof(uint32_t);
    }
    loops = (size % sizeof(uint32_t));
    for (int index = 0; index < loops; ++index)
    {
        *pdest = *psrc;
        ++pdest;
        ++psrc;
    }
}

packingRecord* shellFunc getPackingRecord()
{
	BYTE packingRecordSectionName[] = ".tw";
	IMAGE_SECTION_HEADER* packingRecordSectionHdr = getSectionHdrByName((char *)packingRecordSectionName);
	packingRecord* currPackingRecord = (packingRecord *)( getPeb()->ImageBaseAddress + packingRecordSectionHdr->VirtualAddress);
	return currPackingRecord;
}

void shellFunc restoreDataDir()
{
	BYTE str_VirtualProtect[] = "VirtualProtect";
	BOOL(WINAPI*myVirtualProtect)(LPVOID, SIZE_T, DWORD, PDWORD) =(BOOL(WINAPI*)(LPVOID, SIZE_T, DWORD, PDWORD))blindFetchWinAPI((char *)str_VirtualProtect);

	DWORD oldMemType;
	myVirtualProtect( &(getNtHdr(getPeb()->ImageBaseAddress)->OptionalHeader.DataDirectory), sizeof(IMAGE_DATA_DIRECTORY) * 15 ,  PAGE_READWRITE, &oldMemType);
	myMemcpy(  &(getNtHdr(getPeb()->ImageBaseAddress)->OptionalHeader.DataDirectory), &getPackingRecord()->prevDataDirTable, sizeof(IMAGE_DATA_DIRECTORY) * 15);
	myVirtualProtect( &(getNtHdr(getPeb()->ImageBaseAddress)->OptionalHeader.DataDirectory), sizeof(IMAGE_DATA_DIRECTORY) * 15 ,  oldMemType, &oldMemType );
}
bool shellFunc fixIat()
{
	BYTE str_LoadLibraryA[] = "LoadLibraryA";
	HMODULE(WINAPI*myLoadLibraryA)(LPCSTR) = (HMODULE(WINAPI*)(LPCSTR))blindFetchWinAPI((char *)str_LoadLibraryA);
	BYTE str_GetProcAddress[] = "GetProcAddress";
	FARPROC(WINAPI*myGetProcAddress)(HMODULE, LPCSTR) = (FARPROC(WINAPI*)(HMODULE, LPCSTR))blindFetchWinAPI((char *)str_GetProcAddress);

	restoreDataDir();
	IMAGE_DATA_DIRECTORY *importsDir = &( getPackingRecord()->prevDataDirTable[IMAGE_DIRECTORY_ENTRY_IMPORT] );
	size_t maxSize = importsDir->Size;
	size_t impAddrVA = getPeb()->ImageBaseAddress + importsDir->VirtualAddress;

	for (IMAGE_IMPORT_DESCRIPTOR* lib_desc = (IMAGE_IMPORT_DESCRIPTOR*)impAddrVA;; lib_desc++) {
		if ((lib_desc->FirstThunk == 0) && (lib_desc->OriginalFirstThunk == 0)) break;
		LPSTR lib_name = (LPSTR)( getPeb()->ImageBaseAddress + lib_desc->Name );

		size_t call_via = lib_desc->FirstThunk;
		size_t thunk_addr = lib_desc->OriginalFirstThunk;
		if (thunk_addr == 0) thunk_addr = lib_desc->FirstThunk;
		IMAGE_THUNK_DATA* orginThunk = (IMAGE_THUNK_DATA*)( getPeb()->ImageBaseAddress + thunk_addr);
		IMAGE_THUNK_DATA* fieldThunk = (IMAGE_THUNK_DATA*)( getPeb()->ImageBaseAddress + call_via);

		while (true) {
			if (fieldThunk->u1.Function == 0) break;
			if (orginThunk->u1.Ordinal & 0x80000000) {
				size_t addr = (size_t)myGetProcAddress(myLoadLibraryA(lib_name), (char *)(orginThunk->u1.Ordinal & 0xFFFF));
				fieldThunk->u1.Function = addr;
			}
			if (fieldThunk->u1.Function == orginThunk->u1.Function) {
				PIMAGE_IMPORT_BY_NAME by_name = (PIMAGE_IMPORT_BY_NAME)(getPeb()->ImageBaseAddress + orginThunk->u1.AddressOfData);
				if (orginThunk->u1.Ordinal & IMAGE_ORDINAL_FLAG32) return false;

				LPSTR func_name = (LPSTR)by_name->Name;
				size_t addr = (size_t)myGetProcAddress((HMODULE)myLoadLibraryA(lib_name), func_name);
	
				fieldThunk->u1.Function = addr;
			}
			orginThunk ++;
			fieldThunk ++;
		}
	}
	return true;
}

typedef NTSTATUS (WINAPI *XRtlDecompressBuffer)(
	USHORT CompressionFormat,
	PUCHAR UncompressedBuffer,
	ULONG  UncompressedBufferSize,
	PUCHAR CompressedBuffer,
	ULONG  CompressedBufferSize,
	PULONG FinalUncompressedSize
	);

void shellFunc stubEntry() {
	char str_RtlDecompressBuffer[] = "RtlDecompressBuffer";
	XRtlDecompressBuffer xRtlDecompressBuffer = (XRtlDecompressBuffer)blindFetchWinAPI(str_RtlDecompressBuffer);
	char compresDataName[] = "30cm";
	IMAGE_SECTION_HEADER* compressedData = getSectionHdrByName(compresDataName);	
	DWORD decompressedSize = 0;
	IMAGE_SECTION_HEADER* sectionHdr = getSectionArr(getPeb()->ImageBaseAddress);
	bool done = (xRtlDecompressBuffer(COMPRESSION_FORMAT_LZNT1,
			(PUCHAR)(getPeb()->ImageBaseAddress + sectionHdr[0].VirtualAddress),  sectionHdr[0].Misc.VirtualSize,
			(PUCHAR)(getPeb()->ImageBaseAddress + compressedData->VirtualAddress), compressedData->Misc.VirtualSize,
			&decompressedSize) == 0);
	
	fixIat();
	((void(*)())(getPeb()->ImageBaseAddress + getPackingRecord()->orginalEntryPoint))();
} 	
