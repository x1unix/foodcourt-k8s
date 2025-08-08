.PHONY: apply
apply:
	kubectl apply -k ./

.PHONY: clean
clean:
	kubectl delete -k .

