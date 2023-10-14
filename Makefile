V2_BASE=citizenship-v2
V2_YAML=$(V2_BASE).yml
V2_CONTEXT=contexts/$(V2_BASE).jsonld

TEMPLATE=template.html
INDEX=index.html

all:
	npx yml2vocab -v $(V2_YAML) -t $(TEMPLATE) -c
	mv -f $(V2_BASE)_context.jsonld $(V2_CONTEXT)
	mv -f $(V2_BASE).html $(INDEX)

clean:
	rm -f $(INDEX) $(V2_CONTEXT) $(V2_BASE).ttl $(V2_BASE).jsonld

.PHONEY: clean
