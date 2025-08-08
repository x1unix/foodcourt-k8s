CLUSTER?=fc
PORT?=8080

.PHONY: apply
apply:
	kubectl apply -k ./

.PHONY: clean
clean:
	kubectl delete -k .

.PHONY: cluster.up
cluster.up:
	k3d cluster create $(CLUSTER) --port $(PORT):80@loadbalancer

.PHONY: cluster.down
cluster.down:
	k3d cluster delete $(CLUSTER)

